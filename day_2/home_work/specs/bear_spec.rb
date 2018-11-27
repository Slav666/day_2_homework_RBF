
require('minitest/autorun')
require('minitest/rg')
require_relative('../bear.rb')
require_relative('../fish.rb')
require_relative('../river.rb')

class TestBear < Minitest::Test

  def setup
    @bear = Bear.new("Yogi","Grizzly")
    @fish1 = Fish.new("Neo")
    @fish2 = Fish.new("Trinity")
    @fish3 = Fish.new("Morpheus")
    @river = River.new([@fish1, @fish2, @fish3])
  end

  def test_bear_name
    assert_equal("Yogi", @bear.name)
  end

  def test_bear_type
    assert_equal("Grizzly", @bear.type)
  end

  def test_food_starts_empty
    assert_equal(0, @bear.food_count)
  end

  def test_bear_can_take_fish_from_river
    @bear.take_fish_from_river(@river)
    assert_equal(1,@bear.food_count)
    assert_equal(2,@river.number_of_fishes)
  end


 end
