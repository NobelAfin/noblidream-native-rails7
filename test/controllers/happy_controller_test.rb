require "test_helper"

class HappyControllerTest < ActionDispatch::IntegrationTest
  test "should get espiritual" do
    get happy_espiritual_url
    assert_response :success
  end

  test "should get family_united" do
    get happy_family_united_url
    assert_response :success
  end

  test "should get give_to_others" do
    get happy_give_to_others_url
    assert_response :success
  end

  test "should get life_purpose" do
    get happy_life_purpose_url
    assert_response :success
  end
end
