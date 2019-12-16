module Eddy
  # Base class for EDI Transaction Sets.
  class TransactionSet
    # @return [Integer]
    attr_reader :id
    # @return [String]
    attr_reader :functional_group
    # @return [String]
    attr_reader :description
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
