module Eddy
  # Configuration for Eddy
  class Config

    # test, development, or production
    # @return [String]
    attr_accessor :env

    # :memory, :file, :db?
    # @return [Symbol]
    attr_accessor :persistence_method

    # @return [void]
    def initialize()
      self.env = "test"
      self.persistence_method = :memory
    end

  end
end
