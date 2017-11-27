require "application_system_test_case"

class ClubsTest < ApplicationSystemTestCase
  test "Editing a club" do
    user = create(:user)

    visit signin_path

    fill_in "Email", with: user.email
    fill_in "Password", with: "Password1"
    click_on "Sign In"

    club = create(:club)

    visit club_path(club)

    click_on "Edit"
    fill_in "Club Name", with: "ATO"
    fill_in "Club Logo", with: "ato_logo.png"
    fill_in "Mission Statement", with: "Hi we are ATO"

    click_on "Save"
    assert_text "Hi we are ATO"
  end

  test "Editing a club with invalid input" do
    user = create(:user)

    visit signin_path

    fill_in "Email", with: user.email
    fill_in "Password", with: "Password1"
    click_on "Sign In"

    club = create(:club)

    visit club_path(club)

    click_on "Edit"
    fill_in "Club Name", with: ""

    click_on "Save"
    assert_text "Edit"
  end
end
