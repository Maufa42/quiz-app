require "test_helper"

class QuizResponseControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get quiz_response_new_url
    assert_response :success
  end

  test "should get create" do
    get quiz_response_create_url
    assert_response :success
  end
end
