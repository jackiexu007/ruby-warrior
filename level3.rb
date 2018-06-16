class Player
  def play_turn(warrior)
	if (warrior.feel.empty? != TRUE)
		warrior.attack!
	elsif (warrior.health >=15)
		warrior.walk!
	else
		warrior.rest!
	end  
  end
end
