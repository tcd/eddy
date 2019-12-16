require "time"

module Eddy
  # Top level EDI interchange.
  class Interchange
    # @return [Eddy::Store] Data store for the Interchange and all encompassed components.
    attr_accessor :store
    # @return [Array<Eddy::TransactionSet::Base>]
    attr_accessor :transaction_sets
    # @return [Eddy::Segments::ISA]
    attr_accessor :isa
    # @return [Eddy::Segments::IEA]
    attr_accessor :iea

    # @return [void]
    def initialize()
      self.store = Eddy::Store.new(time: Time.now().utc())
      self.isa = Eddy::Segments::ISA.new()
      self.iea = Eddy::Segments::IEA.new()
    end

    # @return [self]
    def self.create(transaction_set_ids)
      itch = Eddy::Interchange.new()
      return itch
    end

    # @return [Eddy::Interchange]
    def self.create_single(transaction_set_id)
      itch = Eddy::Interchange.new()
    end

  end
end
