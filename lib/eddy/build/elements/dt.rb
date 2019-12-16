require "ginny"

module Eddy
  module Build

    # @param el [Eddy::Schema::ElementSummary]
    # @param test [Boolean] (false) When true, returns output as a string instead of writing to a file.
    # @return [void]
    def self.dt(el, test: false)
      fmt = determine_dt_format(el.max)
      constructor = Ginny::Func.create({
        name: "initialize",
        body: <<~FUNC_BODY,
          @id = "#{el.id}"
          @name = "#{el.name}"
          @description = "#{el.description}"
          super(min: #{el.min}, max: #{el.max}, fmt: :#{fmt})
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
      c.generate(File.join(Eddy::Util.root_dir, "build", "elements", "dt"))
      return nil
    end

    # FIXME: This code is redundant, it already exists in Eddy::Element::DT.determine_format
    # @param int [Integer]
    # @return [Symbol]
    def self.determine_dt_format(int)
      case int
      when 6 then return :yymmdd
      when 8 then return :ccyymmdd
      else
        raise Eddy::Errors::Error, "unable to determine format for dt element"
      end
    end

  end
end
