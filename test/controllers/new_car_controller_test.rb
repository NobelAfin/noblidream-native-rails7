require "test_helper"

class NewCarControllerTest < ActionDispatch::IntegrationTest
  test "should get bicycle" do
    get new_car_bicycle_url
    assert_response :success
  end

  test "should get car" do
    get new_car_car_url
    assert_response :success
  end

  test "should get luxury_car" do
    get new_car_luxury_car_url
    assert_response :success
  end

  test "should get motorcycle" do
    get new_car_motorcycle_url
    assert_response :success
  end

  test "should get profit_car" do
    get new_car_profit_car_url
    assert_response :success
  end

  test "should get vehicle_for_business" do
    get new_car_vehicle_for_business_url
    assert_response :success
  end
end
