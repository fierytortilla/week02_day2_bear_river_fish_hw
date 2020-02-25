require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use!(Minitest::Reporters::SpecReporter.new)

require_relative("../bear")
require_relative("../river")
require_relative("../fish")

class BearTest < MiniTest::Test

  def setup()
    @bear1= Bear.new("Knut", "Polar bear")
    @fish1= Fish.new("trout")
    @fish2= Fish.new("cod")
    @fish3= Fish.new("pike")
    @fishes= [@fish1, @fish2, @fish3]
    @river1= River.new("Liffey", @fishes)
  end

  def test_get_bear_name()
    assert_equal("Knut", @bear1.name)
  end

  def test_get_bear_type()
    assert_equal("Polar bear", @bear1.type)
  end

  def test_roar()
    assert_equal("ROAR", @bear1.roar())
  end

  def test_food_count()
    assert_equal(0, @bear1.food_count())
  end

  def test_eating_fish()
    @bear1.eat_fish_from_river(@river1)
    assert_equal(1, @bear1.food_count)
    assert_equal(2, @river1.fish_count)
  end

end
