module Eddy
  # A group of `Eddy::TransactionSet::Base` classes.
  class FunctionalGroup

    # @return [Eddy::Data::Store] Data store for the Interchange and all encompassed components.
    attr_accessor :store
    # Class for making new Transaction Sets.
    # @return [Eddy::TransactionSet]
    attr_accessor :transaction_set
    # An array of Transaction Set instances
    # @return [Array<Eddy::TransactionSet>]
    attr_accessor :transaction_sets

    # @param store [Eddy::Data::Store]
    # @param transaction_set [Eddy::TransactionSet]
    # @return [void]
    def initialize(store, transaction_set)
      self.store = store
      self.transaction_set = transaction_set
      self.transaction_sets = []
    end

    # @return [String]
    def render()
      number_of_included_functional_groups = self.store.number_of_included_functional_groups
      gs = Eddy::Segments::GS.new(store, number_of_included_functional_groups, self.transaction_set)
      ge = Eddy::Segments::GE.new(store, number_of_included_functional_groups, self.transaction_set)
      segments = [gs, self.transaction_sets, ge].flatten
      return segments.join(self.store.segment_separator) + segment_separator
    end

  end
end
