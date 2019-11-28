require "ginny"

module Eddy
  module Build

    def self.build_dt(e)
      fmt = determine_dt_format(e[:max])
      constructor = Ginny::Func.create({
        name: "initialize",
        body: <<~FUNC_BODY,
          @id = "#{e[:id]}"
          @name = "#{e[:name]}"
          @type = "DT"
          self.min = #{e[:min]}
          self.max = #{e[:max]}
          super(:#{fmt})
        FUNC_BODY
      }).render()
      data = {
        name: e[:name],
        description: e[:description],
        parent: "Eddy::Element::DT",
        modules: ["Eddy", "Elements"],
        body: constructor,
        file_prefix: "#{e[:id]}.",
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
        raise Eddy::Error, "unable to determine format for dt element"
      end
    end

  end
end
