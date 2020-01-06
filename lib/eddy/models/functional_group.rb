module Eddy
  module Models
    # A group of `Eddy::Models::TransactionSet::Base` classes.
    class FunctionalGroup

      # @return [String]
      attr_reader :id
      # @return [Eddy::Data::Store] Data store for the Interchange and all encompassed components.
      attr_accessor :store
      # An array of Transaction Set instances.
      # @return [Array<Eddy::Models::TransactionSet>]
      attr_accessor :transaction_sets

      # @param store [Eddy::Data::Store]
      # @param transaction_sets [Eddy::Models::TransactionSet]
      # @return [void]
      def initialize(store, *transaction_sets)
        self.store = store
        transaction_sets.flatten!
        self.transaction_sets = transaction_sets || []
        if self.transaction_sets.length == 0
          raise ArgumentError, "At least one transaction set is required to create a functional group"
        end
        @id = self.transaction_sets.first.functional_group
      end

      # @return [Array<#render>]
      def render()
        f_group_ctrl_num = Eddy::Data.new_functional_group_control_number(@id)
        gs = Eddy::Segments::GS.new(store, f_group_ctrl_num, @id)
        ge = Eddy::Segments::GE.new(store, f_group_ctrl_num, self.transaction_sets.length)
        return [gs, self.transaction_sets, ge].flatten.map(&:render)
      end

    end
  end
end
