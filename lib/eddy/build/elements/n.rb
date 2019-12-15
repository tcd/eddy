require "ginny"

module Eddy
  module Build

    # @param el [Eddy::Schema::ElementSummary]
    # @param test [Boolean] (false) When true, returns output as a string instead of writing to a file.
    # @return [void]
    def self.n(el, test: false)
      decimal_points = self.determine_decimals(el.type)
      constructor = Ginny::Func.create({
        name: "initialize",
        body: <<~FUNC_BODY,
          @id = "#{el.id}"
          @name = "#{el.name}"
          @description = "#{el.description}"
          super(min: #{el.min}, max: #{el.max}, decimals: #{decimal_points})
        FUNC_BODY
      }).render()
      c = Ginny::Class.create({
        name: Eddy::Util.normalize_id(el.id),
        description: el.doc_comment,
        parent: "Eddy::Element::N",
        modules: ["Eddy", "Elements"],
        body: constructor,
        file_prefix: "#{el.id}.n.",
      })
      return c.render if test
      c.generate(File.join(Eddy::Util.root_dir, "build", "elements", "n"))
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
