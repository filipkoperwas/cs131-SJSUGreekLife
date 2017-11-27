require 'test_helper'

class ClubPageControllerTest < ActionDispatch::IntegrationTest
  test "create club" do
    club = create(:club)
    assert_equal "Alpha Epsilon Pi", club.name
    assert_equal 1, club.layout
    assert_equal "aepi_logo.png", club.picture
  end

  test "should get index" do
    club = create(:club)
    get club_page_index_url
    assert_response :success
  end

  test "should get show" do
    club = create(:club)
    user = create(:user)
    get club_page_show_url
    assert_response :success
  end

end
