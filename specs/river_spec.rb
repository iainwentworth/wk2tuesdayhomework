require('minitest/autorun')
require('minitest/rg')
require_relative('../river.rb')
require_relative('../fish.rb')

class RiverTest < MiniTest::Test

def setup()
@fish1 = Fish.new("George")
@fish2 = Fish.new("Amy")
fish = [@fish1, @fish2]
@river = River.new("Amazon", fish)
end

def test_river_name()
  assert_equal("Amazon", @river.name())
end

def test_river_fish()
  assert_equal([@fish1, @fish2], @river.fish())
end

def test_fish_count()
  assert_equal(2, @river.fish_count())
end

def test_remove_a_fish()
  @river.remove_a_fish(@fish1)
  assert_equal(false, @river.does_fish_exist(@fish1))
end

def test_does_fish_exist()
  result = @river.does_fish_exist(@fish1)
  assert_equal(true, result )
end

end
