require 'test_helper'

class PassengerTest < ActiveSupport::TestCase
  def setup
    @binh = passengers(:binh)
  end

  test "should be valid" do
    assert @binh.valid?
  end

  # test "must have name" do
  #   @binh.name = ""
  #   assert_not @binh.valid?
  #   @binh.name = "    "
  #   assert_not @binh.valid?
  # end

  # test "must have email" do
  #   @binh.email = ""
  #   assert_not @binh.valid?
  #   @binh.email = "    "
  #   assert_not @binh.valid?
  # end
end
