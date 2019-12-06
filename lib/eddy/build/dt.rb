require "ginny"

module Eddy
  module Build

    # @param el [Hash]
    # @return [void]
    def self.dt(el)
      fmt = determine_dt_format(el[:max])
      constructor = Ginny::Func.create({
        name: "initialize",
        body: <<~FUNC_BODY,
          @id = "#{el[:id]}"
          @name = "#{el[:name]}"
          @type = "DT"
          @min = #{el[:min]}
          @max = #{el[:max]}
          super(:#{fmt})
        FUNC_BODY
      }).render()
      data = {
        name: el[:name],
        description: el[:description],
        parent: "Eddy::Element::DT",
        modules: ["Eddy", "Elements"],
        body: constructor,
        file_prefix: "#{el[:id]}.",
      }
      c = Ginny::Class.create(data)
      c.generate(File.join(Eddy.root_dir, "build", "elements", "dt"))
      return nil
    end

    # @param int [Integer]
    # @return [Symbol]
    def self.determine_dt_format(int)
      case int
      when 6
        return :yymmdd
      when 8
        return :ccyymmdd
      else
        raise Eddy::Errors::Error, "unable to determine format for dt element"
      end
    end

  end
end
