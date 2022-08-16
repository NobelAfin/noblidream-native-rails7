require "test_helper"

class LoveControllerTest < ActionDispatch::IntegrationTest
  test "should get men" do
    get love_men_url
    assert_response :success
  end
end
