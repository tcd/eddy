require "ginny"

module Eddy
  module Build
    module Elements

      # @param el [Eddy::Summary::Element]
      # @return [Array<Hash>]
      def self.element_params(el)
        return [
          { name: "val", type: el.yard_type, optional: true, keyword: true },
          { name: "req", type: "String",     optional: true, keyword: true },
          { name: "ref", type: "String",     optional: true, keyword: true },
        ]
      end

      # @param el [Eddy::Summary::Element]
      # @return [String]
      def self.default_constructor(el)
        return Ginny::Func.create({
          name: "initialize",
          params: self.element_params(el),
          body: <<~RB,
            @id = "#{el.id}"
            @name = "#{el.name}"
            @description = "#{el.description}"
            super(
              min: #{el.min},
              max: #{el.max},
              req: req,
              ref: ref,
              val: val,
            )
          RB
        }).render()
      end

      # @param el [Eddy::Summary::Element]
      # @param body [String]
      # @return [Ginny::Class]
      def self.ginny_class(el, body)
        return Ginny::Class.create({
          classify_name: false,
          name:          Eddy::Util.normalize_id(el.id),
          description:   el.doc_comment,
          parent:        "Eddy::Models::Element::#{el.edi_type}",
          modules:       ["Eddy", "Elements"],
          body:          body,
        })
      end

      # @param el [Eddy::Summary::Element]
      # @param test [Boolean] (false) When true, returns output as a string instead of writing to a file.
      # @return [void]
      def self.element(el, test: false)
        c = self.ginny_class(el, self.default_constructor(el))
        return c.render if test
        c.generate(
          File.join(Eddy::Util.root_dir, "build", "elements"),
          file: "#{el.id}.#{Eddy::Util.snake_case(el.name)}.rb",
        )
        return nil
      end

    end
  end
end
