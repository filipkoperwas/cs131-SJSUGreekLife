require 'test_helper'

class ClubPageHelperTest < ActionView::TestCase
  test "Should work" do
    user = create(:user)
    club = create(:club)
    assert_equal "club officer", user.acc_type

  end
end
