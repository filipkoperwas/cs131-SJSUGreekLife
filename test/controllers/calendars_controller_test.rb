require 'test_helper'

class CalendarsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @calendar = FactoryBot.create(:calendar)
  end

  test "should get index" do
    get calendars_path(format: :json)
    assert_response :success
  end

  test "should get new" do
    get new_calendar_path(format: :json)
    assert_response :success
  end

  test "should create calendar" do
    assert_difference('Calendar.count') do
      post calendars_url, params: { calendar: { latitude: @calendar.latitude, longitude: @calendar.longitude, name: @calendar.name } }
    end

    assert_redirected_to calendar_url(Calendar.last)
  end

  test "should show calendar" do
    get calendar_path(@calendar, format: :json)
    assert_response :success
  end

  test "should get edit" do
    get edit_calendar_path(@calendar, format: :json)
    assert_response :success
  end

  test "should update calendar" do
    patch calendar_url(@calendar), params: { calendar: { latitude: @calendar.latitude, longitude: @calendar.longitude, name: @calendar.name } }
    assert_redirected_to calendar_url(@calendar)
  end

  test "should destroy calendar" do
    assert_difference('Calendar.count', -1) do
      delete calendar_url(@calendar)
    end

    assert_redirected_to calendars_url
  end
end
