require "test_helper"

module BuildTest
  module TransactionSetBuilderTest
    class TS850Test < Minitest::Test

      def setup
        @summary = Eddy::Summary::TransactionSet.from_file(file_fixture("schema/850.edi.yml"))
      end

      def test_transaction_set_builder
        want = <<~RB.strip
          module Eddy
            module TransactionSets
              module TS850
                # ### Transaction Set Summary:
                #
                # - Id: 850
                # - Name: Purchase Order
                # - Functional Group: PO
                class TS850 < Eddy::Models::TransactionSet

                  ID = "850".freeze
                  NAME = "Purchase Order".freeze
                  FUNCTIONAL_GROUP = "PO".freeze

                  # @param store [Eddy::Data::Store]
                  # @return [void]
                  def initialize(store)
                    @beg = Eddy::Segments::BEG.new(store)
                    @td5 = Eddy::Segments::TD5.new(store)
                    @l_n1 = Eddy::TransactionSets::TS850::Loops::N1::Base.new(store)
                    @l_po1 = Eddy::TransactionSets::TS850::Loops::PO1::Base.new(store)
                    @ctt = Eddy::Segments::CTT.new(store)
                    super(
                      store,
                      @beg,
                      @td5,
                      @l_n1,
                      @l_po1,
                      @ctt,
                    )
                  end

                  # (see Eddy::Segments::BEG)
                  #
                  # @yieldparam [Eddy::Segments::BEG]
                  # @return [Eddy::Segments::BEG]
                  def BEG()
                    yield(@beg) if block_given?
                    return @beg
                  end

                  # (see Eddy::Segments::TD5)
                  #
                  # @yieldparam [Eddy::Segments::TD5]
                  # @return [Eddy::Segments::TD5]
                  def TD5()
                    yield(@td5) if block_given?
                    return @td5
                  end

                  # (see Eddy::TransactionSets::TS850::Loops::N1::Base)
                  #
                  # @yieldparam [Eddy::TransactionSets::TS850::Loops::N1::Repeat]
                  # @return [void]
                  def L_N1(&block)
                    if block_given?
                      @l_n1.repeat(&block)
                    else
                      raise Eddy::Errors::Error, "No block given in loop iteration"
                    end
                    return nil
                  end

                  # (see Eddy::TransactionSets::TS850::Loops::PO1::Base)
                  #
                  # @yieldparam [Eddy::TransactionSets::TS850::Loops::PO1::Repeat]
                  # @return [void]
                  def L_PO1(&block)
                    if block_given?
                      @l_po1.repeat(&block)
                    else
                      raise Eddy::Errors::Error, "No block given in loop iteration"
                    end
                    return nil
                  end

                  # (see Eddy::Segments::CTT)
                  #
                  # @yieldparam [Eddy::Segments::CTT]
                  # @return [Eddy::Segments::CTT]
                  def CTT()
                    yield(@ctt) if block_given?
                    return @ctt
                  end

                end
              end
            end
          end
        RB
        have = Eddy::Build::TransactionSetBuilder.new(@summary).ginny_class.render()
        assert_equal(want, have)
      end

      def test_build_loops
        skip("This is more complicated now that each loop gets its own file.")
      end

    end
  end
end
