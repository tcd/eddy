module Eddy
  module Models
    # A group of `Eddy::Models::TransactionSet::Base` classes.
    class FunctionalGroup

      # @return [String]
      attr_reader :id
      # Data store for the Interchange and all encompassed components.
      # @return [Eddy::Data::Store]
      attr_accessor :store
      # A unique control number for the Functional Group.
      # @return [Integer]
      attr_accessor :control_number
      # An array of Transaction Set instances.
      # @return [Array<Eddy::Models::TransactionSet>]
      attr_accessor :transaction_sets

      # @param store [Eddy::Data::Store]
      # @param control_number [Integer]
      # @param transaction_sets [Eddy::Models::TransactionSet]
      # @return [void]
      def initialize(store, control_number, *transaction_sets)
        self.store = store
        self.control_number = control_number
        transaction_sets.flatten!
        self.transaction_sets = transaction_sets || []
        if self.transaction_sets.length == 0
          raise ArgumentError, "At least one transaction set is required to create a functional group"
        end
        @id = self.transaction_sets.first.functional_group
      end

      # @return [Array<#render>]
      def render()
        gs = Eddy::Segments::GS.new(self.store, self.control_number, @id)
        ge = Eddy::Segments::GE.new(self.store, self.control_number, self.transaction_sets.length)
        return [gs, self.transaction_sets, ge].flatten.map(&:render)
      end

    end
  end
end
