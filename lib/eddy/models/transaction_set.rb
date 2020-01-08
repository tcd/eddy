module Eddy
  module Models
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
      # Container used to distribute state throughout an Interchange.
      # @return [Eddy::Data::Store]
      attr_accessor :store
      # A unique control number for the Transaction Set.
      # @return [Integer]
      attr_accessor :control_number

      # @param store [Eddy::Data::Store]
      # @param components [Array<Segment, Loop>]
      # @return [void]
      def initialize(store, *components)
        self.store = store
        components.flatten!
        self.components = components || []
        self.control_number = Eddy::Data.new_transaction_set_control_number(self.id)
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
      def add_envelope()
        st = Eddy::Segments::ST.new(self.store)
        st.TransactionSetIdentifierCode = self.id
        st.TransactionSetControlNumber  = self.control_number

        se = Eddy::Segments::SE.new(self.store)
        se.NumberOfIncludedSegments    = self.all_components.length + 2
        se.TransactionSetControlNumber = self.control_number

        self.components.unshift(st)
        self.components.push(se)
      end

      # This shouldn't be used.
      # An Interchange or FunctionalGroup should call `all_components` and render those itself.
      #
      # @param s_sep [String] (self.store.segment_separator)
      # @return [String]
      def render(s_sep = self.store.segment_separator)
        add_envelope()
        return self.all_components.map { |s| s.render(self.store.element_separator) }.compact.join(s_sep)
      end

      # Return all contained Segments in a single, flattened array.
      #
      # @return [Array<Eddy::Models::Segment>]
      def all_components()
        comps = self.components.map do |c|
          if c.is_a?(Eddy::Models::Loop::Base)
            c.all_contents()
          elsif c.is_a?(Eddy::Models::Segment)
            c
          else
            raise Eddy::Errors::RenderError
          end
        end
        return comps.flatten
      end

    end
  end
end
