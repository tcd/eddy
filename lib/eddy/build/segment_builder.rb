require "set"
require "ginny"

module Eddy
  module Build
    # Generate Ruby code from JSON/YAML EDI definitions.
    class SegmentBuilder

      # @return [Eddy::Schema::SegmentSummary]
      attr_accessor :summary
      # @return [String] (nil)
      attr_accessor :folder
      # @return [Boolean] (true)
      attr_accessor :aliases
      # @return [Boolean] (false)
      attr_accessor :headers
      # A hash of element names that appear more than once in the segment.
      # @return [Hash{String => Integer}]
      attr_accessor :duplicate_elements

      # @param folder [String] (nil)
      # @param aliases [Boolean] (true)
      # @param headers [Boolean] (false)
      # @return [void]
      def initialize(folder: nil, aliases: true, headers: false)
        self.folder  = folder
        self.aliases = aliases
        self.headers = headers
      end

      # @param path [String] Path to a JSON or YAML file containing a valid Segment definition.
      # @param (see #initialize)
      # @return [Eddy::Build::SegmentBuilder]
      def self.from_file(path, **kwargs)
        raise Eddy::Errors::Error, "Invalid segment definition" unless Eddy::Schema.valid_segment_data?(path)
        data = Eddy::Util.read_json_or_yaml(path)
        sb = Eddy::Build::SegmentBuilder.new(**kwargs)
        sb.summary = Eddy::Schema::SegmentSummary.create(data)
        return sb
      end

      # @param summary [Eddy::Schema::SegmentSummary]
      # @param (see #initialize)
      # @return [Eddy::Build::SegmentBuilder]
      def self.from_summary(summary, **kwargs)
        sb = Eddy::Build::SegmentBuilder.new(**kwargs)
        sb.summary = summary
        return sb
      end

      # Generated the Segment and return the name of the file where it was written.
      #
      # @param build_elements [Boolean] (false)
      # @return [String]
      def build(build_elements: false)
        Eddy::Build.make_folders()
        if build_elements
          Eddy::Build.generate_elements(self.summary.elements)
        end
        path = self.folder || File.join(Eddy.config.build_dir, "segments")
        result = self.ginny_class.generate(path)
        return result
      end

      # @return [Ginny::Class]
      def ginny_class()
        return Ginny::Class.create({
          classify_name: false,
          modules: ["Eddy", "Segments"],
          parent: "Eddy::Segment",
          name: summary.id,
          description: summary.doc_comment(header: true),
          body: <<~STR,

            #{self.constructor()}

            #{self.accessors()}
          STR
        })
      end

      # @return [String]
      def constructor()
        return Ginny::Func.create({
          name: "initialize",
          params: [{ name: "store", type: "Eddy::Data::Store" }],
          body: <<~RB,
            @id = "#{summary.id}"
            @name = "#{summary.name}"
            #{self.declarations()}



            #{self.super_call()}
          RB
        }).render()
      end

      # @return [String]
      def declarations()
        decs = ""
        self.summary.elements.each do |el|
          req = el.req.nil? ? "nil" : '"' + el.req + '"'
          decs << %(@#{el.ref.to_s.downcase} = Eddy::Elements::#{Eddy::Util.normalize_id(el.id)}.new(ref: "#{el.ref.to_s.upcase}", req: #{req})\n)
        end
        return decs
      end

      # @return [String]
      def super_call()
        super_call = "super(\n"
        super_call << "  store,\n"
        self.summary.elements.each { |el| super_call << "  @#{el.ref.to_s.downcase},\n" }
        super_call << ")"
        return super_call
      end

      # @return [String]
      def accessors()
        self.find_duplicate_elements()
        defs = self.summary.elements.map do |el|
          Eddy::Build::SegmentBuilder.element_accessor_v2(el, self.duplicate_elements)
        end
        return defs.join("\n\n")
      end

      # @param el [Eddy::Schema::ElementSummary]
      # @param header [Symbol] (see Eddy::Schema::ElementSummary#doc_comment)
      # @return [String]
      def self.element_accessor_v1(el, header: :summary)
        return <<~RB.strip
          #{el.doc_comment(header: header).gsub(/^/, '# ').gsub(/([[:blank:]]+)$/, '')}
          #
          # @param arg [#{el.yard_type}]
          # @return [void]
          def #{el.ref.upcase}=(arg)
            @#{el.ref.downcase}.value = arg
          end
        RB
      end

      # @param el [Eddy::Schema::ElementSummary]
      # @param dupes [Hash]
      # @param header [Boolean] (false)
      # @return [String]
      def self.element_accessor_v2(el, dupes, header: :ref)
        if dupes.key?(el.name)
          normal_name = el.normalized_name + dupes[el.name].to_s
          dupes[el.name] += 1
        else
          normal_name = el.normalized_name
        end
        return <<~RB.strip
          #{el.doc_comment(header: header).gsub(/^/, '# ').gsub(/([[:blank:]]+)$/, '')}
          #
          # @param arg [#{el.yard_type}]
          # @return [void]
          def #{el.ref.upcase}=(arg)
            @#{el.ref.downcase}.value = arg
          end
          alias #{normal_name}= #{el.ref.upcase}=
        RB
      end

      # @return [void]
      def find_duplicate_elements()
        names = self.summary.elements.map(&:name)
        s = Set.new()
        dupes = names.reject { |e| s.add?(e) }.uniq
        self.duplicate_elements = {}
        dupes.each { |d| self.duplicate_elements[d] = 1 }
        return nil
      end

    end
  end
end
