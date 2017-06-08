require 'test_helper'

class CameraControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get camera_index_url
    assert_response :success
  end

end
