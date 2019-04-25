require 'test_helper'

class AuthControllerTest < ActionDispatch::IntegrationTest
  test "should get login" do
    get auth_login_url
    assert_response :success
  end

  test "should get get_current_user" do
    get auth_get_current_user_url
    assert_response :success
  end

end
