class River

def initialize(name, fish)
@name = name
@fish = fish
end

def name()
  @name
end

def fish()
  @fish
end

def fish_count()
  @fish.count
end

def remove_a_fish(fish_to_remove)
  @fish.delete(fish_to_remove)
end

def does_fish_exist(fish_to_check)
  @fish.include?(fish_to_check)
end

end
