require 'test_helper'

class AjouControllerTest < ActionController::TestCase
  test "should get foodlist" do
    get :foodlist
    assert_response :success
  end

end
