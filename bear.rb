require('pry-byebug')
require_relative("river.rb")

class Bear

  attr_reader :name, :type
  attr_writer :fish_in_stomach

  def initialize(name, type)
    @name= name
    @type= type
    @fish_in_stomach= []
  end

  def roar()
    return "ROAR"
  end

  def food_count()
    return @fish_in_stomach.count()
  end

  def eat_fish_from_river(river)
    @fish_in_stomach.push(river.fish_gets_eaten())
  end

end
