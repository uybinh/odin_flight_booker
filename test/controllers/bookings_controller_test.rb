require 'test_helper'

class BookingsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get new_booking_path
    assert_response :success
  end

end
