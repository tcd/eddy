require "test_helper"

module WriteTest
  class TS856Test < Minitest::Test

    def setup
      @epoch = Time.at(0).utc()
    end

    def test_nested_loops
      skip()
      want = <<~EDI.gsub(/\n/, "")
        ST*856*0001~
        SE**0001~
      EDI
      store = Eddy::Data::Store.new(time: @epoch)
      ts = Eddy::TransactionSets::TS856::TS856.new(store)
      result = ts.render()
      assert_equal(want, result)
    end

  end
end