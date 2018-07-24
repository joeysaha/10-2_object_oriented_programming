class Player

  def initialize(name)
    @name = name
    @exp = 0
    @earnings = 0
    @quota = 50+@exp/2
  end

  # attr_reader :exp, :earnings

  def name
    @name
  end

  def name=(x)
    @name = x
  end

  def exp
    @exp
  end

  def earnings
    @earnings
  end

  def quota
    @quota
  end

  def work(x,y)
    @exp += 1
    if @exp < quota
      @earnings += 0.25
    else
      @earnings += 0.50
    end
  end

  def quota
    @quota = 50+@exp/2
  end

  def end_game
    @quota = 50
  end





end

boy = Player.new("Dude")

def output(boy)
  boy=boy
  puts "#{boy.name} has #{boy.exp} and has earned
  #{boy.earnings}. His quota to meet is
  #{boy.quota}"
end

# Player.name = "Dude"
puts boy.name
puts boy.exp
puts boy.earnings
puts boy.quota
puts output(boy)
