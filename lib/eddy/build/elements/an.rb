require "ginny"

module Eddy
  module Build

    # @param el [Eddy::Schema::ElementSummary]
    # @param test [Boolean] (false) When true, returns output as a string instead of writing to a file.
    # @return [void]
    def self.an(el, test: false)
      constructor = Ginny::Func.create({
        name: "initialize",
        body: <<~FUNC_BODY,
          @id = "#{el.id}"
          @name = "#{el.name}"
          @description = "#{el.description}"
          super(min: #{el.min}, max: #{el.max})
        FUNC_BODY
      }).render()
      c = Ginny::Class.create({
        name: Eddy::Util.normalize_id(el.id),
        description: el.doc_comment,
        parent: "Eddy::Element::AN",
        modules: ["Eddy", "Elements"],
        body: constructor,
        file_prefix: "#{el.id}.an.",
      })
      return c.render if test
      c.generate(File.join(Eddy::Util.root_dir, "build", "elements", "an"))
      return nil
    end

  end
end
