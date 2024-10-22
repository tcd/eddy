require "test_helper"

class ReadTest < Minitest::Test

  def setup
    @edi_file = file_fixture("edi/trump.850.edi")
  end

  # This doesn't test anything; it's mainly for debugging.
  def test_nothing_in_particular
    itch = Eddy::Parse::Interchange.from_file(@edi_file)
    data = itch.parse()
    refute_nil(data)
  end

end
