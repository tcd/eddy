require "food_truck"

module Eddy
  module Build
    # @param e [Hash]
    # @return [void]
    def self.build_an(e)
      constructor = FoodTruck::Func.create({
        name: "initialize",
        body: <<~FUNC_BODY,
          @id = "#{e[:id]}"
          @name = "#{e[:name]}"
          @type = "AN"
          self.min = #{e[:min]}
          self.max = #{e[:max]}
        FUNC_BODY
      }).render()
      data = {
        name: e[:name],
        description: e[:description],
        parent: "Eddy::Element::AN",
        modules: ["Eddy", "Elements"],
        body: constructor,
        file_prefix: "#{e[:id]}.",
      }
      c = FoodTruck::Class.create(data)
      c.generate(File.join(Eddy.root_dir, "build", "elements", "an"))
      return nil
    end
  end
end
