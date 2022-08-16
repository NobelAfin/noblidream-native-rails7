require "test_helper"

class DreamsControllerTest < ActionDispatch::IntegrationTest
  test "should get buy_wish" do
    get dreams_buy_wish_url
    assert_response :success
  end

  test "should get friends" do
    get dreams_friends_url
    assert_response :success
  end

  test "should get gamer" do
    get dreams_gamer_url
    assert_response :success
  end

  test "should get happy" do
    get dreams_happy_url
    assert_response :success
  end

  test "should get healthy" do
    get dreams_healthy_url
    assert_response :success
  end

  test "should get love" do
    get dreams_love_url
    assert_response :success
  end

  test "should get my_own_business" do
    get dreams_my_own_business_url
    assert_response :success
  end

  test "should get new_car" do
    get dreams_new_car_url
    assert_response :success
  end

  test "should get new_house" do
    get dreams_new_house_url
    assert_response :success
  end

  test "should get new_skill" do
    get dreams_new_skill_url
    assert_response :success
  end

  test "should get save_time_and_expenses" do
    get dreams_save_time_and_expenses_url
    assert_response :success
  end

  test "should get travel" do
    get dreams_travel_url
    assert_response :success
  end
end
