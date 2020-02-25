require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use!(Minitest::Reporters::SpecReporter.new)

require_relative("../river")
require_relative("../fish")

class RiverTest < MiniTest::Test

  def setup()
    @fish1= Fish.new("trout")
    @fish2= Fish.new("cod")
    @fish3= Fish.new("pike")
    @fishes= [@fish1, @fish2, @fish3]
    @river1= River.new("Liffey", @fishes)
  end

  def test_get_river_name()
    assert_equal("Liffey", @river1.name)
  end

  def test_fishes_count()
    assert_equal(3, @river1.fish_count())
  end

  def test_fish_gets_eaten()
    @river1.fish_gets_eaten()
    assert_equal(2, @river1.fish_count())
  end

end
