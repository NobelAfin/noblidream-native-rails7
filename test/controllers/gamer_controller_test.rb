require "test_helper"

class GamerControllerTest < ActionDispatch::IntegrationTest
  test "should get assemble_pc_gamer" do
    get gamer_assemble_pc_gamer_url
    assert_response :success
  end

  test "should get buy_console" do
    get gamer_buy_console_url
    assert_response :success
  end

  test "should get buy_game" do
    get gamer_buy_game_url
    assert_response :success
  end

  test "should get buy_pc_gamer" do
    get gamer_buy_pc_gamer_url
    assert_response :success
  end

  test "should get travel_gamer" do
    get gamer_travel_gamer_url
    assert_response :success
  end
end
