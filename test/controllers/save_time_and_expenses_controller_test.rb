require "test_helper"

class SaveTimeAndExpensesControllerTest < ActionDispatch::IntegrationTest
  test "should get buy_from_productor" do
    get save_time_and_expenses_buy_from_productor_url
    assert_response :success
  end

  test "should get clean_house" do
    get save_time_and_expenses_clean_house_url
    assert_response :success
  end

  test "should get delivery_to_work" do
    get save_time_and_expenses_delivery_to_work_url
    assert_response :success
  end

  test "should get gasoline" do
    get save_time_and_expenses_gasoline_url
    assert_response :success
  end

  test "should get laundry" do
    get save_time_and_expenses_laundry_url
    assert_response :success
  end

  test "should get pet_care" do
    get save_time_and_expenses_pet_care_url
    assert_response :success
  end

  test "should get save_the_time_in_the_market" do
    get save_time_and_expenses_save_the_time_in_the_market_url
    assert_response :success
  end

  test "should get taking_care" do
    get save_time_and_expenses_taking_care_url
    assert_response :success
  end
end
