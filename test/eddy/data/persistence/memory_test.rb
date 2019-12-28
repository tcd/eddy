require "test_helper"

module DataTest
  module Persistence
    class MemoryTest < Minitest::Test
      Eddy.config.persistence_method = :memory
    end
  end
end
