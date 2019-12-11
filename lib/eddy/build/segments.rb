require "ginny"
require "yaml"

module Eddy
  module Build

    # @param path [String] Path to a YAML file containing a Segment definition.
    # @param test [Boolean] (false) When true, returns output as a string instead of writing to a file.
    # @return [void]
    def self.segment_from_yaml(path, test: false)
      data = YAML.safe_load(File.read(path), symbolize_names: true)
      Eddy::Build.segment(data, test: test)
    end

    # @param data [Hash<Symbol>]
    # @param test [Boolean] (false) When true, returns output as a string instead of writing to a file.
    # @return [void]
    def self.segment(data, test: false)
      c = Ginny::Class.create({
        modules: ["Eddy", "Segments"],
        parent: "Eddy::Segment",
        name: data[:id],
        description: self.segment_description(data),
        body: <<~STR,

          #{self.segment_constructor(data)}

          #{data[:elements].map { |e| self.element_accessor(e[:ref], e[:id]) }.join("\n\n")}
        STR
      })
      return c.render if test
      c.generate(File.join(Eddy::Helpers.root_dir, "build", "segments"))
      return nil
    end

    # @param data [Hash<Symbol>]
    # @return [String]
    def self.segment_constructor(data)
      declarations = ""
      super_call = "super(\n"

      data[:elements].each do |e|
        declarations << "@#{e[:ref].to_s.downcase} = Eddy::Elements::#{Eddy::Helpers.normalize_id(e[:id])}.new\n"
        super_call << "  @#{e[:ref].to_s.downcase},\n"
      end

      super_call << ")"

      return Ginny::Func.create({
        name: "initialize",
        body: <<~RB,
          @id = "#{data[:id]}"
          @name = "#{data[:name]}"
          #{declarations}



          #{super_call}
        RB
      }).render()
    end

    # @param data [Hash<Symbol>]
    # @return [String]
    def self.segment_description(data)
      return <<~END
        ### Segment Summary:

        - Id: #{data[:id]}
        - Name: #{data[:name]}
        - Purpose: #{data[:purpose]}
      END
    end

    # @param ref [String]
    # @param element_id [String]
    # @return [String]
    def self.element_accessor(ref, element_id)
      return <<~RB.strip
        # (see Eddy::Elements::#{Eddy::Helpers.normalize_id(element_id)})
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
      data = Eddy::Data.element_data_by_id(element_id)
      name = Eddy::Helpers.normalize_name(data[:name])
      return <<~RB.strip
        # Set value for #{ref.upcase}
        # (see Eddy::Elements::#{Eddy::Helpers.normalize_id(element_id)})
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
