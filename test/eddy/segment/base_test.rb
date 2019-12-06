require "test_helper"

class BaseTest < Minitest::Test

  def test_docs
    x = Eddy::Segments::N2.new()
    x.name_1 = "x"
    x.name_2 = "y"
    puts x.inspect
  end
end
