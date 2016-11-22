require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get feedback" do
    get home_feedback_url
    assert_response :success
  end

end
