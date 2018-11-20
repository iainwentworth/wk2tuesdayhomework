class Bears

def initialize(name, type)
@name = name
@type = type
@stomach = []
end

def add_fish_to_stomach(fish_to_add)
  @stomach << fish_to_add
end

def does_fish_exist_in_stomach(fish_to_check)
  @stomach.include?(fish_to_check)
end

def roar()
  "Roar"
end

def bear_food_count()
  @stomach.count
end

end
