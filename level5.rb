class Player
  def play_turn(warrior)
	@health = 20 if @health.nil?
	if (warrior.feel.empty? == TRUE)
		if (warrior.health <=15 && warrior_under_attack?(warrior) != TRUE)
			warrior.rest!
		else 
			warrior.walk!
		end
	elsif warrior.feel.captive?
		warrior.rescue!
	else
		warrior.attack!
	end
		@health = warrior.health
  end
  def warrior_under_attack?(warrior)
	@health > warrior.health
  end
end
