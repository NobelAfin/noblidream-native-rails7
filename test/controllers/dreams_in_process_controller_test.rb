require "test_helper"

class DreamsInProcessControllerTest < ActionDispatch::IntegrationTest
  test "should get olympic_games" do
    get dreams_in_process_olympic_games_url
    assert_response :success
  end
end
