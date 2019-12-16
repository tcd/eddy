require "ginny"

module Eddy
  module Build

    # @param el [Eddy::Schema::ElementSummary]
    # @param test [Boolean] (false) When true, returns output as a string instead of writing to a file.
    # @return [void]
    def self.tm(el, test: false)
      fmt = determine_tm_format(el.max)
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
        parent: "Eddy::Element::TM",
        modules: ["Eddy", "Elements"],
        body: constructor,
        file_prefix: "#{el.id}.tm.",
      })
      return c.render if test
      c.generate(File.join(Eddy::Util.root_dir, "build", "elements", "tm"))
      return nil
    end

    # FIXME: This code is redundant, it already exists in Eddy::Element::TM.determine_format
    # @param int [Integer]
    # @return [Symbol]
    def self.determine_tm_format(int)
      case int
      when 4 then return :hhmm
      when 6 then return :hhmmss
      when 7 then return :hhmmssd
      when 8 then return :hhmmssdd
      else
        raise Eddy::Errors::Error, "unable to determine format for tm element"
      end
    end

  end
end
