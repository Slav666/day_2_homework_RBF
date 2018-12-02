require('minitest/autorun')
require('minitest/rg')
require_relative('../guest.rb')

class GuestTest < Minitest::Test

  def setup
    @guest = Guest.new("Colin")
  end

  def test_guest_name
    assert_equal("Colin", @guest.name())
  end

end
