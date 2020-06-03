module Eddy
  module TransactionSets
    module TS846
      module Loops
        module N1

          # ### Loop Summary:
          #
          # - Repeat: 5
          # - Components:
          #   - N1
          #   - N2
          #   - N3
          #   - N4
          #   - REF
          #   - PER
          class Base < Eddy::Models::Loop::Base
            # @param store [Eddy::Data::Store]
            # @return [void]
            def initialize(store)
              @repeat_limit = 5
              super(store, Repeat)
            end
          end

          # (see Eddy::TransactionSets::TS846::Loops::N1::Base)
          class Repeat < Eddy::Models::Loop::Repeat
            # @param store [Eddy::Data::Store]
            # @return [void]
            def initialize(store)
              @n1 = Eddy::Segments::N1.new(store)
              @n2 = Eddy::Segments::N2.new(store)
              @n3 = Eddy::Segments::N3.new(store)
              @n4 = Eddy::Segments::N4.new(store)
              @ref = Eddy::Segments::REF.new(store)
              @per = Eddy::Segments::PER.new(store)
              super(
                store,
                @n1,
                @n2,
                @n3,
                @n4,
                @ref,
                @per,
              )
            end

            # (see Eddy::Segments::N1)
            #
            # @yieldparam [Eddy::Segments::N1]
            # @return [Eddy::Segments::N1]
            def N1()
              yield(@n1) if block_given?
              return @n1
            end

            # (see Eddy::Segments::N2)
            #
            # @yieldparam [Eddy::Segments::N2]
            # @return [Eddy::Segments::N2]
            def N2()
              yield(@n2) if block_given?
              return @n2
            end

            # (see Eddy::Segments::N3)
            #
            # @yieldparam [Eddy::Segments::N3]
            # @return [Eddy::Segments::N3]
            def N3()
              yield(@n3) if block_given?
              return @n3
            end

            # (see Eddy::Segments::N4)
            #
            # @yieldparam [Eddy::Segments::N4]
            # @return [Eddy::Segments::N4]
            def N4()
              yield(@n4) if block_given?
              return @n4
            end

            # (see Eddy::Segments::REF)
            #
            # @yieldparam [Eddy::Segments::REF]
            # @return [Eddy::Segments::REF]
            def REF()
              yield(@ref) if block_given?
              return @ref
            end

            # (see Eddy::Segments::PER)
            #
            # @yieldparam [Eddy::Segments::PER]
            # @return [Eddy::Segments::PER]
            def PER()
              yield(@per) if block_given?
              return @per
            end
          end

        end
      end
    end
  end
end
