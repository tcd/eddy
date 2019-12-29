module Eddy
  # Base class for EDI Transaction Sets.
  class TransactionSet

    # @return [Integer]
    ID = nil
    # @return [String]
    NAME = nil
    # @return [String]
    FUNCTIONAL_GROUP = nil

    # @return [Array<Segment, Loop>]
    attr_accessor :components
    # @return [Eddy::Data::Store] Container used to distribute state throughout an Interchange.
    attr_accessor :store

    # @param store [Eddy::Data::Store]
    # @param components [Array<Segment, Loop>]
    # @return [void]
    def initialize(store, *components)
      self.store = store
      components.flatten!
      self.components = components || []
    end

    # @return [String]
    def id
      return self.class::ID
    end

    # @return [String]
    def self.id
      return self::ID
    end

    # @return [String]
    def functional_group
      return self.class::FUNCTIONAL_GROUP
    end

    # @return [String]
    def self.functional_group
      return self::FUNCTIONAL_GROUP
    end

    # @return [String]
    def name
      return self.class::NAME
    end

    # @return [String]
    def self.name
      return self::NAME
    end

    # Add `ST` and `SE` segments to the `components` array.
    #
    # @param t_set_control_number [Integer] (Eddy::Data::Store#transaction_set_control_number)
    # @return [void]
    def add_envelope(t_set_control_number = self.store.transaction_set_control_number)
      st = Eddy::Segments::ST.new(self.store)
      st.TransactionSetIdentifierCode = self.id
      st.TransactionSetControlNumber  = t_set_control_number

      se = Eddy::Segments::SE.new(self.store)
      se.NumberOfIncludedSegments    = self.all_components.length + 2
      se.TransactionSetControlNumber = t_set_control_number

      self.components.unshift(st)
      self.components.push(se)
    end

    # This shouldn't be used.
    # An Interchange or FunctionalGroup should call `all_components` and render those itself.
    #
    # @return [String]
    def render()
      add_envelope()
      return self.all_components.map { |s| s.render(self.store.element_separator) }.join(self.store.segment_separator) + self.store.segment_separator
    end

    # Return all contained Segments in a single, flattened array.
    #
    # @return [Array<Eddy::Segment>]
    def all_components()
      comps = self.components.map do |c|
        if c.is_a?(Eddy::Loop::Base)
          c.all_contents()
        elsif c.is_a?(Eddy::Segment)
          c
        else
          raise Eddy::Errors::RenderError
        end
      end
      return comps.flatten
    end

  end
end
