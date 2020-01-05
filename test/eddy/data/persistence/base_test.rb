require "test_helper"

module DataTest
  module Persistence
    class BaseTest < Minitest::Test

      def setup
        Eddy.config.persistence_method = :base
      end

      def teardown
        Eddy.config.persistence_method = :memory
      end

      def test_interchange_control_numbers
        skip()
      end

      def test_functional_group_control_numbers
        skip()
      end

      def test_transaction_set_control_numbers
        skip()
      end

      def test_add_interchange_control_number
        skip()
      end

      def test_add_functional_group_control_number
        skip()
      end

      def test_add_transaction_set_control_number
        skip()
      end

    end
  end
end
