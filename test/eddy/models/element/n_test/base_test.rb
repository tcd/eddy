require "test_helper"

module ModelsTest
  module NTest
    class BaseTest < Minitest::Test

      def test_setter
        n = ExN0.new()
        n.value = 420
        assert_equal("420", n.value)
      end

      def test_setter_validates_argument_type
        assert_raises(Eddy::Errors::TypeValidationError) { ExN0.new(val: "420") }
      end

      def test_getter_when_mandatory
        n = ExN0.new(req: "M", val: 6900)
        assert_equal("6900", n.value)
      end

      def test_getter_when_mandatory_and_nil
        n = ExN0.new(req: "M")
        assert_raises(Eddy::Errors::ElementNilValueError) { n.value() }
      end

      def test_getter_when_optional_and_nil
        n = ExN0.new(req: "O")
        assert_equal("", n.value)
      end

    end
  end
end
