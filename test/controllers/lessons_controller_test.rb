require "test_helper"

class LessonsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get lessons_new_url
    assert_response :success
  end

  test "should get create" do
    get lessons_create_url
    assert_response :success
  end

  test "should get show" do
    get lessons_show_url
    assert_response :success
  end

  test "should get destroy" do
    get lessons_destroy_url
    assert_response :success
  end
end
