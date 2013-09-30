require 'test_helper'

class CommonCellTest < Cell::TestCase
  test "operation" do
    invoke :operation
    assert_select "p"
  end
  

end
