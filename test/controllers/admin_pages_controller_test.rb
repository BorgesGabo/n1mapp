require 'test_helper'

class AdminPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get admin_pages_home_url
    assert_response :success
  end
  test "should get root" do
    get '/'
    assert_response :success
  end

end
