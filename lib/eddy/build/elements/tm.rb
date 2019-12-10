require "ginny"

module Eddy
  module Build

    # @param el [Hash]
    # @param test [Boolean] (false) When true, returns output as a string instead of writing to a file.
    # @return [void]
    def self.tm(el, test: false)
      fmt = determine_tm_format(el[:max])
      constructor = Ginny::Func.create({
        name: "initialize",
        body: <<~FUNC_BODY,
          @id = "#{el[:id]}"
          @name = "#{el[:raw_name]}"
          super(min: #{el[:min]}, max: #{el[:max]}, fmt: :#{fmt})
        FUNC_BODY
      }).render()
      c = Ginny::Class.create({
        name: el[:name],
        description: el[:description],
        parent: "Eddy::Element::TM",
        modules: ["Eddy", "Elements"],
        body: constructor,
        file_prefix: "#{el[:id]}.tm.",
      })
      return c.render if test
      c.generate(File.join(Eddy::Helpers.root_dir, "build", "elements", "tm"))
      return nil
    end

    # @param int [Integer]
    # @return [Symbol]
    def self.determine_tm_format(int)
      case int
      when 4
        return :hhmm
      when 6
        return :hhmmss
      when 7
        return :hhmmssd
      when 8
        return :hhmmssdd
      else
        raise Eddy::Errors::Error, "unable to determine format for tm element"
      end
    end

  end
end
