require 'test_helper'

class BreweryControllerTest < ActionDispatch::IntegrationTest
  test "should get User" do
    get brewery_User_url
    assert_response :success
  end

  test "should get Order" do
    get brewery_Order_url
    assert_response :success
  end

end
