require "test_helper"

module BuildTest
  class TransactionSetBuilderTest < Minitest::Test

    def setup
      @summary = Eddy::Schema::TransactionSetSummary.create({
        id: "855",
        name: "Purchase Order Acknowledgement",
        functional_group: "PR",
        components: [],
      })
      @ts855 = <<~RB.strip
        module Eddy
          module TransactionSets
            # ### Transaction Set Summary:
            #
            # - Id: 855
            # - Name: Purchase Order Acknowledgement
            # - Functional Group: PR
            class TS855 < Eddy::TransactionSet

              ID = "855".freeze
              NAME = "Purchase Order Acknowledgement".freeze
              FUNCTIONAL_GROUP = "PR".freeze

              # @param store [Eddy::Data::Store]
              # @return [void]
              def initialize(store)
                super(
                  store,
                )
              end

            end
          end
        end
      RB
    end

    def test_transaction_set_builder
      have = Eddy::Build::TransactionSetBuilder.from_summary(@summary).ginny_class.render()
      assert_equal(@ts855, have)
    end

  end
end
