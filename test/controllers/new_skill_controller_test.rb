require "test_helper"

class NewSkillControllerTest < ActionDispatch::IntegrationTest
  test "should get coding" do
    get new_skill_coding_url
    assert_response :success
  end

  test "should get cook" do
    get new_skill_cook_url
    assert_response :success
  end

  test "should get design" do
    get new_skill_design_url
    assert_response :success
  end

  test "should get freelancer" do
    get new_skill_freelancer_url
    assert_response :success
  end

  test "should get new_language" do
    get new_skill_new_language_url
    assert_response :success
  end

  test "should get robotics" do
    get new_skill_robotics_url
    assert_response :success
  end
end
