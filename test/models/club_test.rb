require 'test_helper'

class ClubTest < ActiveSupport::TestCase
  test "Should not save club without title" do
    club = Club.new
    assert_not club.save, "Saved the club without a title"
  end
end
