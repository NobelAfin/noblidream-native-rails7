require "test_helper"

class HealthControllerTest < ActionDispatch::IntegrationTest
  test "should get emocional" do
    get health_emocional_url
    assert_response :success
  end

  test "should get espiritual" do
    get health_espiritual_url
    assert_response :success
  end

  test "should get fisical_better" do
    get health_fisical_better_url
    assert_response :success
  end

  test "should get fisical" do
    get health_fisical_url
    assert_response :success
  end

  test "should get mental_better" do
    get health_mental_better_url
    assert_response :success
  end

  test "should get mental" do
    get health_mental_url
    assert_response :success
  end

  test "should get pre_fisical" do
    get health_pre_fisical_url
    assert_response :success
  end

  test "should get pre_mental" do
    get health_pre_mental_url
    assert_response :success
  end
end
