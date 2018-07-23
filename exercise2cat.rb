class Cat

  def initialize(name, preferred_food, meal_time)
    @name = name
    @preferred_food = preferred_food
    @meal_time = meal_time
  end

  def name
    @name
  end
  #
  ## NO NEED FOR FOLLOWING CODE DUE TO INITIALIZE AND HOW WE DON'T WANT THESE VARIABLES TO CHANGE
  # def name=(x)
  #   @name = x
  # end
  #
  # def preferred_food
  #   @preferred_food
  # end
  #
  # def preferred_food=(x)
  #   @preferred_food = x
  # end
  #
  # def meal_time
  #   @meal_time
  # end
  #
  # def meal_time=(x)
  #   @meal_time = x
  # end

  def eats_at
    if @meal_time < 12
      return "#{@meal_time} AM"
    else
      return "#{@meal_time - 12} PM"
    end
  end

  def meow
    "Hi my name is #{@name}. I eat #{@preferred_food} at #{eats_at}."
  end

end

cat1 = Cat.new("Missy", "Tuna", 18)
cat2 = Cat.new("Amber", "Salmon", 16)

puts cat1.name
puts cat1.eats_at
puts cat2.meow
