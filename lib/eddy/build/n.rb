require "ginny"

module Eddy
  module Build

    # @param el [Hash]
    # @return [void]
    def self.n(el)
      decimal_points = self.determine_decimals(el[:type])
      constructor = Ginny::Func.create({
        name: "initialize",
        body: <<~RUBY,
          @id = "#{el[:id]}"
          @name = "#{el[:name]}"
          @type = "N"
          @min = #{el[:min]}
          @max = #{el[:max]}
          self.decimal_points = #{decimal_points}
        RUBY
      }).render()
      data = {
        name: el[:name],
        description: el[:description],
        parent: "Eddy::Element::N",
        modules: ["Eddy", "Elements"],
        body: constructor,
        file_prefix: "#{el[:id]}.",
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
