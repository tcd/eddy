require "ginny"

module Eddy
  module Build

    # @param e [Hash]
    # @return [void]
    def self.build_n(e)
      decimal_points = self.determine_decimals(e[:type])
      constructor = Ginny::Func.create({
        name: "initialize",
        body: <<~RUBY,
          @id = "#{e[:id]}"
          @name = "#{e[:name]}"
          @type = "N"
          self.min = #{e[:min]}
          self.max = #{e[:max]}
          self.decimal_points = #{decimal_points}
        RUBY
      }).render()
      data = {
        name: e[:name],
        description: e[:description],
        parent: "Eddy::Element::N",
        modules: ["Eddy", "Elements"],
        body: constructor,
        file_prefix: "#{e[:id]}.",
      }
      c = Ginny::Class.create(data)
      c.generate(File.join(Eddy.root_dir, "build", "elements", "n"))
      return nil
    end

    # @param type [String]
    # @return [Integer]
    def self.determine_decimals(type)
      match = type.match(/(?<=N)(?<decimal>\d)/)
      return 0 if match.nil?
      return match[:decimal].to_i
    end

  end
end
