require "ginny"

module Eddy
  module Build

    # @param el [Eddy::Schema::ElementSummary]
    # @param test [Boolean] (false) When true, returns output as a string instead of writing to a file.
    # @return [void]
    def self.dt(el, test: false)
      constructor = Ginny::Func.create({
        name: "initialize",
        params: [
          { name: "val", type: el.yard_type, optional: true, keyword: true },
          { name: "req", type: "String",     optional: true, keyword: true },
        ],
        body: <<~FUNC_BODY,
          @id = "#{el.id}"
          @name = "#{el.name}"
          @description = "#{el.description}"
          super(min: #{el.min}, max: #{el.max}, req: req, val: val)
        FUNC_BODY
      }).render()
      c = Ginny::Class.create({
        classify_name: false,
        name: Eddy::Util.normalize_id(el.id),
        description: el.doc_comment,
        parent: "Eddy::Element::DT",
        modules: ["Eddy", "Elements"],
        body: constructor,
        file_prefix: "#{el.id}.dt.",
      })
      return c.render if test
      c.generate(File.join(Eddy::Util.root_dir, "build", "elements"))
      return nil
    end

  end
end
