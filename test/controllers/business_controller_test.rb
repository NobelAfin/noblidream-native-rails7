require "test_helper"

class BusinessControllerTest < ActionDispatch::IntegrationTest
  test "should get entrepeneur" do
    get business_entrepeneur_url
    assert_response :success
  end

  test "should get factory_production" do
    get business_factory_production_url
    assert_response :success
  end

  test "should get food_and_beverages" do
    get business_food_and_beverages_url
    assert_response :success
  end

  test "should get hardware" do
    get business_hardware_url
    assert_response :success
  end

  test "should get local" do
    get business_local_url
    assert_response :success
  end

  test "should get medical" do
    get business_medical_url
    assert_response :success
  end

  test "should get no_initial_idea" do
    get business_no_initial_idea_url
    assert_response :success
  end

  test "should get social_org" do
    get business_social_org_url
    assert_response :success
  end

  test "should get software" do
    get business_software_url
    assert_response :success
  end

  test "should get trading_company" do
    get business_trading_company_url
    assert_response :success
  end

  test "should get travel_and_tourism" do
    get business_travel_and_tourism_url
    assert_response :success
  end
end
