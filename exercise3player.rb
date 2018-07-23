class Player

  def initialize
    @gold = 0
    @lives = 5
    @health_points = 10
  end

  # def gold
  #   @gold
  # end
  #
  # def lives
  #   @lives
  # end
  #
  # def health_points
  #   @health_points
  # end

  attr_reader :lives, :gold, :health_points

  def level_up
    @lives += 1
  end

  def collect_treasure
    @gold += 1
    if @gold%10==0
      level_up
    end
  end

  def do_battle(damage)
    @health_points -= damage
    if @health_points < 1
      @lives -= 1
      @health_points = 10
    end
    if @lives == 0
      restart
    end
  end

  def restart
    @gold = 0
    @lives = 5
    @health_points = 10
  end
end

fabio = Player.new
fabio.level_up
puts "Gold = #{fabio.gold}"
puts "Lives: #{fabio.lives}"
puts "Health: #{fabio.health_points}"
puts "collecting treasure"
rand(10).times do
  fabio.collect_treasure
end
puts "Gold: #{fabio.gold}"
puts "Lives: #{fabio.lives}"
puts "Health: #{fabio.health_points}"
puts "battling foes"
fabio.do_battle(rand(10))
puts "Gold: #{fabio.gold}"
puts "Lives: #{fabio.lives}"
puts "Health: #{fabio.health_points}"
