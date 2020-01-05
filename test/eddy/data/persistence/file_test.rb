require "test_helper"

module DataTest
  module Persistence
    class FileTest < Minitest::Test
      Eddy.config.persistence_method = :file
    end
  end
end
