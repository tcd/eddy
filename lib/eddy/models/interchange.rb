module Eddy
  # Top level EDI interchange.
  class Interchange
    # @return [Eddy::Data::Store] Data store for the Interchange.
    attr_accessor :store
    # @return [Array<Eddy::TransactionSet>]
    attr_accessor :transaction_sets

    # @param store [Eddy::Data::Store] (Eddy::Data::Store.new)
    # @return [void]
    def initialize(store = Eddy::Data::Store.new())
      self.store = store
      self.transaction_sets = []
    end

    # @param _transaction_sets [Array<Eddy::TransactionSet>]
    # @return [Eddy::Interchange]
    def self.create(_transaction_sets)
      itch = Eddy::Interchange.new()
      return itch
    end

    # @return [String]
    def render()
      ctrl_num = Eddy::Data.new_interchange_control_number()
      f_groups = self.functional_groups()
      sep = self.store.segment_separator
      isa = Eddy::Segments::ISA.new(self.store, ctrl_num)
      iea = Eddy::Segments::IEA.new(self.store, ctrl_num, f_groups.length)
      yield(isa, iea) if block_given?
      return [isa, f_groups, iea].flatten.map(&:render).join(sep) + sep
    end

    # @return [Array<Eddy::FunctionalGroup>]
    def functional_groups()
      sorted_sets = {}
      self.transaction_sets.each do |ts|
        sorted_sets[ts.functional_group] ||= []
        sorted_sets[ts.functional_group] << ts
      end
      return sorted_sets.map { |_, value| Eddy::FunctionalGroup.new(self.store, *value) }
    end

    private

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
