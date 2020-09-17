require 'test_helper'

class AppHelperTest < ActionView::TestCase
  test "full title helper" do
    assert_equal full_title, "ThankTank"
    assert_equal full_title("About"), "ThankTank | About"
  end
end
