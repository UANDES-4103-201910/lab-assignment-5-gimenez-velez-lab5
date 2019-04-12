require 'test_helper'

class OrdersControllerTest < ActionDispatch::IntegrationTest
  test "should get most" do
    get orders_most_url
    assert_response :success
  end

end
