require "test_helper"

class HouseControllerTest < ActionDispatch::IntegrationTest
  test "should get abroad_part_2" do
    get house_abroad_part_2_url
    assert_response :success
  end

  test "should get build_house_abroad" do
    get house_build_house_abroad_url
    assert_response :success
  end

  test "should get build_local_house" do
    get house_build_local_house_url
    assert_response :success
  end

  test "should get buy_house_abroad" do
    get house_buy_house_abroad_url
    assert_response :success
  end

  test "should get buy_local_house" do
    get house_buy_local_house_url
    assert_response :success
  end

  test "should get home_remodeling" do
    get house_home_remodeling_url
    assert_response :success
  end

  test "should get house_exchange" do
    get house_house_exchange_url
    assert_response :success
  end
end
