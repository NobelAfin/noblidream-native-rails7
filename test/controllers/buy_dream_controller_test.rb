require "test_helper"

class BuyDreamControllerTest < ActionDispatch::IntegrationTest
  test "should get electronic" do
    get buy_dream_electronic_url
    assert_response :success
  end
end
