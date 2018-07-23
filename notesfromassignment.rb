class Person

  def hello
    puts "Hello Ruby"
  end

  def name
    @name
  end

  def name=(str)
    @name = str
  end

end

# jim = Person.new
# shelly = Person.new
# jim.name = "Jim"
# shelly.name = "Shelly"

person = Person.new
person.name = 'Dennis'

puts person.name
