require "test_helper"

module DataTest
  module Persistence
    class MemoryTest < Minitest::Test

      def setup
        Eddy.config.persistence_method = :memory
      end

      def teardown
        Eddy.config.persistence_method = :memory
      end

      def test_interchange_control_numbers
        skip()
      end

      def test_transaction_set_control_numbers
        skip()
      end

      def test_add_interchange_control_number
        skip()
      end

      def test_add_transaction_set_control_number
        skip()
      end

    end
  end
end
