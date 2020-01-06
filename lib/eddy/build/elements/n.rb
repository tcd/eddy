require "ginny"

module Eddy
  module Build
    module Elements

      # @param el [Eddy::Summary::Element]
      # @param test [Boolean] (false) When true, returns output as a string instead of writing to a file.
      # @return [void]
      def self.n(el, test: false)
        decimal_points = self.determine_decimals(el.type)
        constructor = Ginny::Func.create({
          name:   "initialize",
          params: self.element_params(el),
          body:   <<~RB,
            @id = "#{el.id}"
            @name = "#{el.name}"
            @description = "#{el.description}"
            super(
              min: #{el.min},
              max: #{el.max},
              req: req,
              ref: ref,
              val: val,
              decimals: #{decimal_points},
            )
          RB
        }).render()
        c = self.ginny_class(el, constructor)
        return c.render if test
        c.generate(
          File.join(Eddy::Util.root_dir, "build", "elements"),
          file: "#{el.id}.#{Eddy::Util.snake_case(el.name)}.rb",
        )
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
end
