module Eddy
  # An EDI interchange with one Transaction Set.
  class SimpleInterchange
    # @return [Eddy::Store] Data store for the Interchange and all encompassed components.
    attr_accessor :store
    # @return [Eddy::TransactionSet]
    attr_accessor :transaction_set
    # @return [Array]
    attr_accessor :components

    # Initialize an interchange with one Functional Group containing one Transaction Set.
    #
    # @param transaction_set [Eddy::TransactionSet]
    # @param store [Eddy::Store] (Eddy::Store.new)
    # @return [void]
    def initialize(transaction_set, store: Eddy::Store.new())
      self.components = []
      self.transaction_set = transaction_set
      self.store = store
      self.store.number_of_transaction_sets_included  = 1
      self.store.number_of_included_functional_groups = 1
    end

    # @return [String]
    def render()
      isa = Eddy::Segments::ISA.new(store)
      isa.ISA05 = "ZZ"
      isa.ISA07 = "ZZ"
      isa.ISA15 = "T"
      iea = Eddy::Segments::IEA.new(store)
      number_of_included_functional_groups = self.store.number_of_included_functional_groups
      gs = Eddy::Segments::GS.new(store, number_of_included_functional_groups, self.transaction_set)
      ge = Eddy::Segments::GE.new(store, number_of_included_functional_groups)
      self.components.prepend(gs)
      self.components.prepend(isa)
      self.components.append(ge)
      self.components.append(iea)
      segments = self.components.map(&:render).flatten().join(store.segment_separator) + store.segment_separator
      return segments
    end

    # @raise [ArgumentError] Unless `transaction_set` is a subclass of {Eddy::TransactionSet}
    # @param transaction_set [Eddy::TransactionSet]
    # @return [void]
    def verify_transaction_set(transaction_set)
      raise ArgumentError unless transaction_set < Eddy::TransactionSet
      raise ArgumentError unless transaction_set <= Eddy::TransactionSet
      raise ArgumentError unless transaction_set.ancestors.include?(Eddy::TransactionSet)
      raise ArgumentError unless transaction_set.superclass == Eddy::TransactionSet
      return nil
    end

  end
end