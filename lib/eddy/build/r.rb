require "ginny"

module Eddy
  module Build

    # @param el [Hash]
    # @return [void]
    def self.r(el)
      constructor = Ginny::Func.create({
        name: "initialize",
        body: <<~FUNC_BODY,
          @id = "#{el[:id]}"
          @name = "#{el[:name]}"
          @type = "R"
          self.min = #{el[:min]}
          self.max = #{el[:max]}
        FUNC_BODY
      }).render()
      data = {
        name: el[:name],
        description: el[:description],
        parent: "Eddy::Element::R",
        modules: ["Eddy", "Elements"],
        body: constructor,
        file_prefix: "#{el[:id]}.",
      }
      c = Ginny::Class.create(data)
      c.generate(File.join(Eddy.root_dir, "build", "elements", "r"))
      return nil
    end

  end
end
