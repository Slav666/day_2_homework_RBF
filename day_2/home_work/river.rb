


class River

  attr_accessor :name

  def initialize(name, fish)
    @name = name
    @fish = fish
  end

  def fish_count
    return @fish.length
  end
  #
  def lose_fish
    @fish.pop
  end

end
