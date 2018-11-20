require('minitest/autorun')
require('minitest/rg')
require_relative('../fish.rb')

class FishTest < MiniTest::Test

  def setup()
    @fish1 = Fish.new("James")
    @fish2 = Fish.new("Ally")
  end

  


end
