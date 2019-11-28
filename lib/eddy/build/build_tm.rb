require "ginny"

module Eddy
  module Build

    # @param e [Hash]
    # @return [void]
    def self.build_tm(e)
      fmt = determine_tm_format(e[:max])
      constructor = Ginny::Func.create({
        name: "initialize",
        body: <<~FUNC_BODY,
          @id = "#{e[:id]}"
          @name = "#{e[:name]}"
          @type = "TM"
          self.min = #{e[:min]}
          self.max = #{e[:max]}
          super(:#{fmt})
        FUNC_BODY
      }).render()
      data = {
        name: e[:name],
        description: e[:description],
        parent: "Eddy::Element::TM",
        modules: ["Eddy", "Elements"],
        body: constructor,
        file_prefix: "#{e[:id]}.",
      }
      c = Ginny::Class.create(data)
      c.generate(File.join(Eddy.root_dir, "build", "elements", "tm"))
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
        raise Eddy::Error, "unable to determine format for tm element"
      end
    end

  end
end
