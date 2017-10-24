require 'test_helper'

class ClubPageControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get club_page_index_url
    assert_response :success
  end

  test "should get show" do
    get club_page_show_url
    assert_response :success
  end

end
