require "test_helper"

class RegistrationControllerTest < ActionDispatch::IntegrationTest
  test "should get introduction" do
    get registration_introduction_url
    assert_response :success
  end

  test "should get part_1a" do
    get registration_part_1a_url
    assert_response :success
  end

  test "should get part_1b" do
    get registration_part_1b_url
    assert_response :success
  end

  test "should get part_2a" do
    get registration_part_2a_url
    assert_response :success
  end

  test "should get part_2b" do
    get registration_part_2b_url
    assert_response :success
  end

  test "should get quick_registration" do
    get registration_quick_registration_url
    assert_response :success
  end

  test "should get selection" do
    get registration_selection_url
    assert_response :success
  end
end
