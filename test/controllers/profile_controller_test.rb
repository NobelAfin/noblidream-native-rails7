require "test_helper"

class ProfileControllerTest < ActionDispatch::IntegrationTest
  test "should get overview" do
    get profile_overview_url
    assert_response :success
  end
end
