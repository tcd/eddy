module ModelsTest
  module NTest

    # Example class for testing inheritence of `Eddy::Element::N`.
    class ExN0 < Eddy::Element::N
      def initialize(val: nil, req: nil)
        @id = @name = @description = @ref = "ExN0"
        super(
          min: 1,
          max: 10,
          req: req,
          decimals: 0,
          val: val,
        )
      end
    end

    # Example class for testing inheritence of `Eddy::Element::N`.
    class ExN1 < Eddy::Element::N
      def initialize(val: nil)
        @id = @name = @description = @ref = "ExN1"
        super(min: 1, max: 15, decimals: 1, val: val)
      end
    end

    # Example class for testing inheritence of `Eddy::Element::N`.
    class ExN2 < Eddy::Element::N
      def initialize(val: nil)
        @id = @name = @description = @ref = "ExN2"
        super(min: 1, max: 15, decimals: 2, val: val)
      end
    end

    # Example class for testing inheritence of `Eddy::Element::N`.
    class ExN5 < Eddy::Element::N
      def initialize(val: nil)
        @id = @name = @description = @ref = "ExN5"
        super(min: 1, max: 15, decimals: 5, val: val)
      end
    end

    # Example class for testing inheritence of `Eddy::Element::N`.
    class ExN9 < Eddy::Element::N
      def initialize(val: nil)
        @id = @name = @description = @ref = "ExN9"
        super(min: 1, max: 15, decimals: 9, val: val)
      end
    end

  end
end
