require "ginny"
require "yaml"

module Eddy
  module Build
    # Generate Ruby code from JSON/YAML EDI definitions.
    class SegmentBuilder

      # @return [Eddy::Schema::SegmentSummary]
      attr_accessor :summary
      # @return [String] (nil)
      attr_accessor :folder
      # @return [Boolean] (false)
      attr_accessor :aliases
      # @return [Boolean] (false)
      attr_accessor :headers
      # @return [Hash]
      attr_accessor :el_names

      # @param folder [String] (nil)
      # @param aliases [Boolean] (false)
      # @param headers [Boolean] (false)
      # @return [void]
      def initialize(folder: nil, aliases: false, headers: false)
        self.folder   = folder
        self.aliases  = aliases
        self.headers  = headers
        self.el_names = {}
      end

      # (see #initialize)
      # @param path [String] Path to a JSON or YAML file containing a valid Segment definition.
      # @return [Eddy::Build::SegmentBuilder]
      def self.from_file(path, **kwargs)
        raise Eddy::Errors::Error, "Invalid segment definition" unless Eddy::Schema.valid_segment_data?(path)
        data = Eddy::Util.read_json_or_yaml(path)
        sb = Eddy::Build::SegmentBuilder.new(**kwargs)
        sb.summary = Eddy::Schema::SegmentSummary.create(data)
        return sb
      end

      # (see #initialize)
      # @param summary [Eddy::Schema::SegmentSummary]
      # @return [Eddy::Build::SegmentBuilder]
      def self.from_summary(summary, **kwargs)
        sb = Eddy::Build::SegmentBuilder.new(**kwargs)
        sb.summary = summary
        return sb
      end

      # @return [String]
      def build()
        path = if folder
                 File.join(Eddy::Util.root_dir, "build", folder, "segments")
               else
                 File.join(Eddy::Util.root_dir, "build", "segments")
               end
        self.ginny_class.generate(path)
        return path
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

            #{summary.elements.map { |el| Eddy::Build::SegmentBuilder.element_accessor_v2(el, header: self.headers) }.join("\n\n")}
          STR
        })
      end

      # @return [String]
      def constructor()
        return Ginny::Func.create({
          name: "initialize",
          params: [{ name: "store", type: "Eddy::Store" }],
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
          decs << "@#{el.ref.to_s.downcase} = Eddy::Elements::#{Eddy::Util.normalize_id(el.id)}.new\n"
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

      # @param el [Eddy::Schema::ElementSummary]
      # @return [String]
      def self.element_accessor_v1(el)
        return <<~RB.strip
          # (see Eddy::Elements::#{Eddy::Util.normalize_id(el.id)})
          #
          # @param arg [#{el.yard_type}]
          # @return [void]
          def #{el.ref.upcase}=(arg)
            @#{el.ref.downcase}.value = arg
          end
        RB
      end

      # @param el [Eddy::Schema::ElementSummary]
      # @param header [Boolean] (false)
      # @return [String]
      def self.element_accessor_v2(el, header: false)
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
      # @return [String]
      def self.element_accessor_v3(el)
        # Get normalized name
        normal_name = el.normalized_name
        # See if name has been used
        count = self.el_names.fetch(normal_name, 0)
        # Add a number on the end if the name already exists
        normal_name += count.to_s if count > 0
        # Increment name use count.
        self.el_names[normal_name] = count + 1
        return <<~RB.strip
          #{el.doc_comment.gsub(/^/, '# ').gsub(/([[:blank:]]+)$/, '')}
          #
          # @param arg [#{el.yard_type}]
          # @return [void]
          def #{el.ref.upcase}=(arg)
            @#{el.ref.downcase}.value = arg
          end
          alias #{normal_name}= #{el.ref.upcase}
        RB
      end

    end
  end
end
