require "ginny"

module Eddy
  module Build

    # @param el [Hash]
    # @param test [Boolean] (false) When true, returns output as a string instead of writing to a file.
    # @return [void]
    def self.r(el, test: false)
      constructor = Ginny::Func.create({
        name: "initialize",
        body: <<~FUNC_BODY,
          @id = "#{el[:id]}"
          @name = "#{el[:raw_name]}"
          @description = "#{el[:raw_description]}"
          super(min: #{el[:min]}, max: #{el[:max]})
        FUNC_BODY
      }).render()
      c = Ginny::Class.create({
        name: el[:name],
        description: el[:description],
        parent: "Eddy::Element::R",
        modules: ["Eddy", "Elements"],
        body: constructor,
        file_prefix: "#{el[:id]}.r.",
      })
      return c.render if test
      c.generate(File.join(Eddy::Util.root_dir, "build", "elements", "r"))
      return nil
    end

  end
end
