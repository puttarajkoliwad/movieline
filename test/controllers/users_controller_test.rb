require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get add_money" do
    get users_add_money_url
    assert_response :success
  end

end
