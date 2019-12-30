require "ginny"

module Eddy
  module Build
    # Generate Ruby code from JSON/YAML EDI definitions.
    class LoopBuilder

      # @return [Eddy::Schema::LoopSummary]
      attr_accessor :summary
      # @return [String] (nil)
      attr_accessor :folder
      # @return [Boolean] (false)
      attr_accessor :headers

      # @param folder [String] (nil)
      # @param headers [Boolean] (false)
      # @return [void]
      def initialize(folder: nil, headers: false)
        self.folder  = folder
        self.headers = headers
      end

      # @param looop [Hash]
      # @return [String]
      def loop_class(looop)
        upper = looop[:loop_id].upcase
        return <<~RB
          # ### Loop Summary:
          #
          # - Repeat: #{looop[:repeat]}
          # - Components:
          #   - ...
          class #{upper} < Eddy::Loop::Base
            # @param store [Eddy::Data::Store]
            # @return [void]
            def initialize(store)
              super(store)
              @repeat = #{looop[:repeat]}
              @components = [
                #{components}
              ]
            end
          end
        RB
      end

      # @param t_set_id [Integer]
      # @return [String]
      def components(t_set_id)
        result = ""
        self.summary.components.each do |comp|
          if comp.key?(:loop_id)
            decs << "Eddy::TransactionSets::TS#{t_set_id}::Loops#{comp[:loop_id].upcase},\n"
          else
            decs << "Eddy::Segments::#{comp[:id].upcase},\n"
          end
        end
        return result
      end

    end
  end
end
