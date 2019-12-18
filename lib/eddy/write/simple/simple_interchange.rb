module Eddy
  # An EDI interchange with one Transaction Set.
  class SimpleInterchange
    # @return [Eddy::Store] Data store for the Interchange and all encompassed components.
    attr_accessor :store
    # @return [Eddy::TransactionSet]
    attr_accessor :transaction_set
    # @return [Eddy::Segments::ISA]
    attr_accessor :isa
    # @return [Eddy::Segments::IEA]
    attr_accessor :iea
    # @return [Eddy::Segments::GS]
    attr_accessor :gs
    # @return [Eddy::Segments::GE]
    attr_accessor :ge

    # @return [void]
    def initialize()
      self.store = Eddy::Store.new()
    end

    # Initialize an interchange with one Functional Group containing one Transaction Set.
    #
    # @param transaction_set [Eddy::TransactionSet]
    # @return [Eddy::SimpleInterchange]
    def self.create(transaction_set)
      itch = Eddy::Interchange.new()
      itch.transaction_set = transaction_set
      itch.store.number_of_transaction_sets_included  = 1
      itch.store.number_of_included_functional_groups = 1
      return itch
    end

    # @return [String]
    def render()
      isa = Eddy::Segments::ISA.new(store)
      iea = Eddy::Segments::IEA.new(store)
      number_of_included_functional_groups = self.store.number_of_included_functional_groups
      gs = Eddy::Segments::GS.new(store, number_of_included_functional_groups, self.transaction_set)
      ge = Eddy::Segments::GE.new(store, number_of_included_functional_groups, self.transaction_set)
      self.components.prepend(gs)
      self.components.prepend(isa)
      self.components.append(ge)
      self.components.append(iea)
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
