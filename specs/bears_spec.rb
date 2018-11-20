require('minitest/autorun')
require('minitest/rg')
require_relative('../bears.rb')
require_relative('../fish.rb')
require_relative('../river.rb')

class BearTest < MiniTest::Test

  def setup()
    @bear = Bears.new("Yogi", "Grizzly")
    @fish1 = Fish.new("Andy")
    @fish2 = Fish.new("George")
    @fish3 = Fish.new("Alfred")
    fish = [@fish1, @fish2, @fish3]
    @river = River.new("Amazon", fish)
  end

def test_bear_can_take_a_fish()


  @river.remove_a_fish(@fish2)
  @bear.add_fish_to_stomach(@fish2)

  assert_equal(false, @river.does_fish_exist(@fish2))
  assert_equal(true, @bear.does_fish_exist_in_stomach(@fish2))
end

def test_add_fish_to_stomach()
  @bear.add_fish_to_stomach(@fish1)
  assert_equal(true, @bear.does_fish_exist_in_stomach(@fish1))
end


def test_does_bear_have_fish_in_stomach()
  @bear.add_fish_to_stomach(@fish2)
  result = @bear.does_fish_exist_in_stomach(@fish2)
  assert_equal(true, result)
end

def test_bear_can_roar()
assert_equal("Roar", @bear.roar())
end

def test_bear_food_count()
  @bear.add_fish_to_stomach(@fish3)
  assert_equal(1, @bear.bear_food_count())
end



end
