require "test_helper"

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get access" do
    get pages_access_url
    assert_response :success
  end

  test "should get add_dream" do
    get pages_add_dream_url
    assert_response :success
  end

  test "should get dreams" do
    get pages_dreams_url
    assert_response :success
  end

  test "should get index" do
    get pages_index_url
    assert_response :success
  end

  test "should get prueba" do
    get pages_prueba_url
    assert_response :success
  end

  test "should get travel" do
    get pages_travel_url
    assert_response :success
  end
end
