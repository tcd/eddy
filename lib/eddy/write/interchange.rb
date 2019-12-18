module Eddy
  # Top level EDI interchange.
  class Interchange
    # @return [Eddy::Store] Data store for the Interchange.
    attr_accessor :store
    # @return [Array<Eddy::Write::FunctionalGroup>]
    attr_accessor :functional_groups

    # @return [void]
    def initialize()
      self.store = Eddy::Store.new()
      self.functional_groups = []
    end

    # @param _transaction_sets [Array<Eddy::TransactionSet>]
    # @return [Eddy::Interchange]
    def self.create(_transaction_sets)
      itch = Eddy::Interchange.new()
      return itch
    end

    # @return [String]
    def render()
      raise NotImplementedError
    end

  end
end
