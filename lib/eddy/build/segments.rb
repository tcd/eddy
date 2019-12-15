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

    # @param summary [Eddy::Schema::SegmentSummary]
    # @param test [Boolean] (false) When true, returns output as a string instead of writing to a file.
    # @param folder [String] (nil)
    # @return [void]
    def self.segment(summary, test: false, folder: nil)
      c = Ginny::Class.create({
        modules: ["Eddy", "Segments"],
        parent: "Eddy::Segment",
        name: summary.id,
        description: summary.doc_comment,
        body: <<~STR,

          #{self.segment_constructor(summary)}

          #{summary.elements.map { |e| self.element_accessor(e[:ref], e[:id]) }.join("\n\n")}
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

    # @param summary [Eddy::Schema::SegmentSummary]
    # @return [String]
    def self.segment_constructor(summary)
      declarations = ""
      super_call = "super(\n"

      summary.elements.each do |e|
        declarations << "@#{e[:ref].to_s.downcase} = Eddy::Elements::#{Eddy::Util.normalize_id(e[:id])}.new\n"
        super_call << "  @#{e[:ref].to_s.downcase},\n"
      end

      super_call << ")"

      return Ginny::Func.create({
        name: "initialize",
        body: <<~RB,
          @id = "#{summary.id}"
          @name = "#{summary.name}"
          #{declarations}



          #{super_call}
        RB
      }).render()
    end

    # @param ref [String]
    # @param element_id [String]
    # @return [String]
    def self.element_accessor(ref, element_id)
      return <<~RB.strip
        # (see Eddy::Elements::#{Eddy::Util.normalize_id(element_id)})
        #
        # @param arg [String]
        # @return [void]
        def #{ref.upcase}=(arg)
          @#{ref.downcase}.value = arg
        end
      RB
    end

    # @param ref [String]
    # @param element_id [String]
    # @return [String]
    def self.element_accessor_v2(ref, element_id)
      data = Eddy::Util::Data.element_data_by_id(element_id)
      name = Eddy::Util.normalize_name(data[:name])
      return <<~RB.strip
        # Set value for #{ref.upcase}
        # (see Eddy::Elements::#{Eddy::Util.normalize_id(element_id)})
        #
        # @param arg [String]
        # @return [void]
        def #{name}=(arg)
          @#{ref}.value = arg
        end
      RB
    end

  end
end
