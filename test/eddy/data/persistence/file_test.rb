require "test_helper"
require "fileutils"

module DataTest
  module Persistence
    class FileTest < Minitest::Test

      def setup
        Eddy.config.persistence_method = :file
      end

      def teardown
        Eddy.data.reset()
        Eddy.config.persistence_method = :memory
      end

      def test_interchange_control_numbers
        assert_equal([], Eddy.data.interchange_control_numbers())
      end

      def test_transaction_set_control_numbers
        assert_equal([], Eddy.data.transaction_set_control_numbers("850"))
      end

      def test_add_interchange_control_number
        assert_equal([], Eddy.data.interchange_control_numbers())
        assert_equal([1], Eddy.data.add_interchange_control_number(1))
        assert_equal([1, 2], Eddy.data.add_interchange_control_number(2))
        assert_equal([1, 2, 3], Eddy.data.add_interchange_control_number(3))
      end

      def test_add_transaction_set_control_number
        assert_equal([], Eddy.data.transaction_set_control_numbers("850"))
        assert_equal([1], Eddy.data.add_transaction_set_control_number("850", 1))
        assert_equal([1, 2], Eddy.data.add_transaction_set_control_number("850", 2))
        assert_equal([1, 2, 3], Eddy.data.add_transaction_set_control_number("850", 3))
      end

    end
  end
end
