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
    # @return [Eddy::Store] Container used to distribute state throughout an Interchange.
    attr_accessor :store

    # @param store [Eddy::Store]
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
    # @return [void]
    def add_envelope
      st = Eddy::Segments::ST.new(self.store)
      st.ST01 = self.id
      self.components.unshift(st)
      se = Eddy::Segments::SE.new(self.store)
      se.SE01 = self.id
      self.components.push(se)
    end

    # @return [String]
    def render()
      segments = self.components.map do |c|
        if c.is_a?(Eddy::Loop::Base)
          c.render
        elsif c.is_a?(Eddy::Segment)
          c
        else
          raise Eddy::Errors::RenderError
        end
        return segments.flatten.map { |s| s.render(self.store.element_separator) }
      end
    end

  end
end
