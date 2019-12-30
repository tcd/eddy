require "test_helper"

module BuildTest
  class TransactionSetBuilderTest < Minitest::Test

    def setup
      @summary = Eddy::Schema::TransactionSetSummary.from_file(file_fixture("schema/850.edi.yml"))
      @ts850 = File.read(file_fixture("ruby/850.rb")).strip
    end

    def test_transaction_set_builder
      skip("WIP")
      # have = Eddy::Build::TransactionSetBuilder.from_summary(@summary).ginny_class.render()
      assert_equal(@ts850, have)
    end

    def test_segment_accessor
      want = <<~RB.strip
        # (see Eddy::Segments::CTT)
        # @yieldparam [Eddy::Segments::CTT] ctt
        # @return [Eddy::Segments::CTT]
        def CTT()
          yield(@ctt) if block_given?
          return @ctt
        end
      RB
      assert_equal(want, Eddy::Build::TransactionSetBuilder.segment_accessor("ctt"))
    end

  end
end
