require 'test_helper'

class ReportsMainControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get reports_main_index_url
    assert_response :success
  end

end
