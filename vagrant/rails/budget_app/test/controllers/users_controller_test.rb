require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  test "should get constroller" do
    get :constroller
    assert_response :success
  end

end
