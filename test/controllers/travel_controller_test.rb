require "test_helper"

class TravelControllerTest < ActionDispatch::IntegrationTest
  test "should get africa" do
    get travel_africa_url
    assert_response :success
  end

  test "should get america" do
    get travel_america_url
    assert_response :success
  end

  test "should get asia" do
    get travel_asia_url
    assert_response :success
  end

  test "should get europe" do
    get travel_europe_url
    assert_response :success
  end

  test "should get oceania" do
    get travel_oceania_url
    assert_response :success
  end

  test "should get steps_travel" do
    get travel_steps_travel_url
    assert_response :success
  end

  test "should get world" do
    get travel_world_url
    assert_response :success
  end
end
