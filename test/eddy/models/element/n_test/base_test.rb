require "test_helper"

module ModelsTest
  module NTest
    class BaseTest < Minitest::Test

      def test_setter
        n = ExN0.new()
        n.value = 420
        assert_equal("420", n.value)
      end

      def test_setter_validates_length
        assert_raises(Eddy::Errors::ElementValidationError) { ExN0.new.value = 123_456_789_111 }
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

      def test_setter_rejects_non_numeric_argument
        assert_raises(Eddy::Errors::ElementValidationError) { ExN0.new(val: "420") }
      end

    end
  end
end
