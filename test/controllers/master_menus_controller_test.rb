require "test_helper"

class MasterMenusControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get master_menus_index_url
    assert_response :success
  end
end
