require 'test_helper'

class ChoraiItemsControllerTest < ActionController::TestCase
  test "should get chorai_index" do
    get :chorai_index
    assert_response :success
  end

end
