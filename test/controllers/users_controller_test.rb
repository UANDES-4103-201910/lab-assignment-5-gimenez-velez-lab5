require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get [create" do
    get users_[create_url
    assert_response :success
  end

  test "should get update" do
    get users_update_url
    assert_response :success
  end

  test "should get destroy]" do
    get users_destroy]_url
    assert_response :success
  end

end
