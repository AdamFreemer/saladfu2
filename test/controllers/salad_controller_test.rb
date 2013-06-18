require 'test_helper'

class SaladControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
