require("pry-byebug")
require_relative("fish.rb")

class River

  attr_reader :name

  def initialize(name, fishes)
    @name= name
    @fishes= fishes
  end

  def fish_count()
    return @fishes.count()
  end

  def fish_gets_eaten()
    return @fishes.shift()
  end

end
