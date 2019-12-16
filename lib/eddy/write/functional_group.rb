module Eddy
  # A group of `Eddy::TransactionSet::Base` classes.
  class FunctionalGroup
    # @return [Eddy::Store] Data store for the Interchange and all encompassed components.
    attr_accessor :store
    # @return [Array<Eddy::TransactionSet::Base>]
    attr_accessor :transaction_sets
    # @return [Eddy::Segments::GS]
    attr_accessor :gs
    # @return [Eddy::Segments::GE]
    attr_accessor :ge

    # @return [void]
    def initialize()
      self.gs = Eddy::Segments::GS.new()
      self.ge = Eddy::Segments::GE.new()
    end
  end
end
