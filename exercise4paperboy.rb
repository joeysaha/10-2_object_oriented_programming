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

  def deliver(x, y)
    m=0
    n=y-x
    while m<n
      @exp += 1
      if @exp < quota
        @earnings += 0.25
      else
        @earnings += 0.50
      end
    m += 1
    end
    if n<@quota
      @earnings -= 2
    end
  end

  def quota
    @quota = 50.0+@exp/2.0
  end

  def report
    puts "#{@name} has #{@exp} houses of
    experience and has earned $#{@earnings}. His
    quota to meet is #{@quota} houses."
  end
end

boy = Player.new("Dude")

# def output(boy)
#   puts "#{boy.name} has #{boy.exp} houses of
#   experience and has earned $#{boy.earnings}. His
#   quota to meet is #{boy.quota} houses."
# end

# Player.name = "Dude"
# puts boy.name
# puts boy.exp
# puts boy.earnings
# puts boy.quota
# puts output(boy)
# boy.deliver(1, 102)
# puts output(boy)
boy.deliver(1,102)
boy.report
