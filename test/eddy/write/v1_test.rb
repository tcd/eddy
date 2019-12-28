require "test_helper"
require "pry"

module WriteTest
  class TS850Test < Minitest::Test

    # focus
    def test_850_without_loops
      skip()
      store = Eddy::Data::Store.new(
        time: Time.at(0).utc(),
      )
      itch = Eddy::TransactionSets::TS850.new(store)
      itch.BEG do |beg|
        beg.TransactionSetPurposeCode = "00"
        # binding.pry
      end
      # result = itch.render()
    end

  end
end
