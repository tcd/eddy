require "ginny"

module Eddy
  module Build

    # @param data [Hash<Symbol>]
    # @param test [Boolean] (false) When true, returns output as a string instead of writing to a file.
    # @return [void]
    def self.segment(data, test: false)
      # body = ""
      # body << "\n"
      # body << self.segment_constructor(data)
      # body << "\n\n"
      # body << data[:elements].map { |k, v| self.element_accessor(k, v) }.join("\n\n")
      # body << "\n"

      c = Ginny::Class.create({
        modules: ["Eddy", "Segments"],
        parent: "Eddy::Segment",
        name: data[:id],
        description: self.segment_description(data),
        body: <<~STR,

          #{self.segment_constructor(data)}

          #{data[:elements].map { |k, v| self.element_accessor(k, v) }.join("\n\n")}
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

      data[:elements].each do |k, v|
        declarations << "@#{k.to_s.downcase} = Eddy::Elements::#{Eddy::Helpers.normalize_id(v)}.new\n"
        super_call << "  @#{k.to_s.downcase},\n"
      end

      super_call << ")"

      body = ""
      body << %(@id = "#{data[:id]}"\n)
      body << %(@description = "#{data[:description]}"\n)
      body << declarations
      body << "\n"
      body << super_call

      return Ginny::Func.create({
        name: "initialize",
        body: body,
      }).render()
    end

    # @param data [Hash<Symbol>]
    # @return [String]
    def self.segment_description(data)
      return <<~END
        ### Segment Summary:

        - Id: #{data[:id]}
        - Description: #{data[:description]}
        - Purpose: #{data[:purpose]}
      END
    end

    # @return [String]
    def self.element_accessor(ref, element_id)
      return <<~RB.strip
        # (see Eddy::Elements::#{Eddy::Helpers.normalize_id(element_id)})
        #
        # @param arg [String]
        # @return [void]
        def #{ref.upcase}=(arg)
          @#{ref}.value = arg
        end
      RB
    end

    # @return [String]
    def self.element_accessor_v2(ref, element_id)
      return <<~RB.strip
        # (see Eddy::Elements::#{Eddy::Helpers.normalize_id(element_id)})
        #
        # @param arg [String]
        # @return [void]
        def #{ref.upcase}=(arg)
          @#{ref}.value = arg
        end
      RB
    end

  end
end
