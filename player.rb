class Player
  def play_turn(warrior)
        @health = 20 if @health.nil?
	if warrior.feel.captive?
		warrior.rescue!	
	elsif warrior.look[1].enemy?
		warrior.shoot!
	else
		warrior.walk!
	end
		@health = warrior.health
  end
end

