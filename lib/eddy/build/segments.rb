require "ginny"
require "yaml"

module Eddy
  module Build

    # Generate Ruby code from JSON/YAML EDI definitions.
    #
    # @param path [String] Path to a JSON or YAML file containing a valid Segment definition.
    # @param test [Boolean] (false) When true, returns output as a string instead of writing to a file.
    # @return [void]
    def self.segment_from_definition(path, test: false)
      raise Eddy::Errors::Error, "Invalid segment definition" unless Eddy::Schema.valid_segment_data?(path)
      data = Eddy::Util.read_json_or_yaml(path)
      seg = Eddy::Schema::SegmentSummary.create(data)
      Eddy::Build.segment(seg, test: test)
    end

    # @param seg [Eddy::Schema::SegmentSummary]
    # @param test [Boolean] (false) When true, returns output as a string instead of writing to a file.
    # @param folder [String] (nil)
    # @return [void]
    def self.segment(seg, test: false, folder: nil)
      c = Ginny::Class.create({
        classify_name: false,
        modules: ["Eddy", "Segments"],
        parent: "Eddy::Segment",
        name: seg.id,
        description: seg.doc_comment,
        body: <<~STR,

          #{self.segment_constructor(seg)}

          #{seg.elements.map { |el| self.element_accessor_v2(el) }.join("\n\n")}
        STR
      })
      return c.render if test
      if folder
        c.generate(File.join(Eddy::Util.root_dir, "build", folder, "segments"))
      else
        c.generate(File.join(Eddy::Util.root_dir, "build", "segments"))
      end
      return nil
    end

    # @param seg [Eddy::Schema::SegmentSummary]
    # @return [String]
    def self.segment_constructor(seg)
      declarations = ""
      super_call = "super(\n"

      seg.elements.each do |el|
        declarations << "@#{el.ref.to_s.downcase} = Eddy::Elements::#{Eddy::Util.normalize_id(el.id)}.new\n"
        super_call << "  @#{el.ref.to_s.downcase},\n"
      end

      super_call << ")"

      return Ginny::Func.create({
        name: "initialize",
        body: <<~RB,
          @id = "#{seg.id}"
          @name = "#{seg.name}"
          #{declarations}



          #{super_call}
        RB
      }).render()
    end

    # @param el [Eddy::Schema::ElementSummary]
    # @return [String]
    def self.element_accessor(el)
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
    # @return [String]
    def self.element_accessor_v2(el)
      return <<~RB.strip
        #{el.doc_comment.gsub(/^/, '# ').gsub(/([[:blank:]]+)$/, '')}
        #
        # @param arg [#{el.yard_type}]
        # @return [void]
        def #{el.ref.upcase}=(arg)
          @#{el.ref.downcase}.value = arg
        end
      RB
      # alias #{el.normalized_name}= #{el.ref.upcase}
    end

  end
end
