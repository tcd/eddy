module Eddy
  module TransactionSets

    class L_N1 < Eddy::Loop::Base
      # @param store [Eddy::Data::Store]
      # @return [void]
      def initialize(store)
        self.store = store
        @loop_id = "L_N1"
        @repeat = 200
        self.components = [
          Eddy::Segments::N1,
          Eddy::Segments::N3,
          Eddy::Segments::N4,
        ]
      end
    end

    class L_PO1 < Eddy::Loop::Base
      # @param store [Eddy::Data::Store]
      # @return [void]
      def initialize(store)
        self.store = store
        @loop_id = "L_PO1"
        @repeat = 100_000
        self.components = [
          Eddy::Segments::PO1,
          Eddy::TransactionSets::L_PID,
          Eddy::TransactionSets::L_ACK,
        ]
      end
    end

    class L_PID < Eddy::Loop::Base
      # @param store [Eddy::Data::Store]
      # @return [void]
      def initialize(store)
        self.store = store
        @loop_id = "L_PID"
        @repeat = 1000
        self.components = []
      end
    end

    class L_ACK < Eddy::Loop::Base
      # @param store [Eddy::Data::Store]
      # @return [void]
      def initialize(store)
        self.store = store
        @loop_id = "L_ACK"
        @repeat = 104
        self.components = [
          Eddy::Segments::ACK,
        ]
      end
    end

    # ### Transaction Set Summary:
    #
    # - Id: 855
    # - Name: Purchase Order Acknowledgement
    # - Functional Group: PR
    class TS855 < Eddy::TransactionSet

      ID = "855".freeze
      NAME = "Purchase Order Acknowledgemen".freeze
      FUNCTIONAL_GROUP = "PR".freeze

      # @param store [Eddy::Data::Store]
      # @return [void]
      def initialize(store)
        self.store = store
        @bak = Eddy::Segments::BAK.new(store)
        @l_n1 = nil
        @l_po1 = nil
        @ctt = Eddy::Segments::CTT.new(store)
        super(
          store,
        )
      end

    end
  end
end
