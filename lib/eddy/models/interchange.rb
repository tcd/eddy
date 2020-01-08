module Eddy
  module Models
    # Top level EDI interchange.
    class Interchange
      # @return [Eddy::Data::Store] Data store for the Interchange.
      attr_accessor :store
      # A unique control number for the Interchange.
      # @return [Integer]
      attr_accessor :control_number
      # @return [Array<Eddy::Models::TransactionSet>]
      attr_accessor :transaction_sets

      # @param store [Eddy::Data::Store] (Eddy::Data::Store.new)
      # @return [void]
      def initialize(store = Eddy::Data::Store.new())
        self.control_number = Eddy::Data.new_interchange_control_number()
        self.store = store
        self.transaction_sets = []
      end

      # @param _transaction_sets [Array<Eddy::Models::TransactionSet>]
      # @return [Eddy::Models::Interchange]
      def self.create(_transaction_sets)
        itch = Eddy::Models::Interchange.new()
        return itch
      end

      # @yieldparam [Eddy::Segments::ISA] isa
      # @yieldparam [Eddy::Segments::IEA] iea
      # @return [String]
      def render()
        f_groups = self.functional_groups()
        sep = self.store.segment_separator
        isa = Eddy::Segments::ISA.new(self.store, self.control_number)
        iea = Eddy::Segments::IEA.new(self.store, self.control_number, f_groups.length)
        yield(isa, iea) if block_given?
        return [isa, f_groups, iea].flatten.map(&:render).join(sep) + sep
      end

      # @return [Array<Eddy::Models::FunctionalGroup>]
      def functional_groups()
        sorted_sets = {}
        self.transaction_sets.each do |ts|
          sorted_sets[ts.functional_group] ||= []
          sorted_sets[ts.functional_group] << ts
        end
        return sorted_sets.map { |_, value| Eddy::Models::FunctionalGroup.new(self.store, *value) }
      end

      private

      # @raise [ArgumentError] Unless `transaction_set` is a subclass of {Eddy::Models::TransactionSet}
      # @param transaction_set [Eddy::Models::TransactionSet]
      # @return [void]
      def verify_transaction_set(transaction_set)
        raise ArgumentError unless transaction_set < Eddy::Models::TransactionSet
        raise ArgumentError unless transaction_set <= Eddy::Models::TransactionSet
        raise ArgumentError unless transaction_set.ancestors.include?(Eddy::Models::TransactionSet)
        raise ArgumentError unless transaction_set.superclass == Eddy::Models::TransactionSet
        return nil
      end

    end
  end
end
