class Player
  def play_turn(warrior)
	case @cnt.to_i
	when 0
		warrior.pivot!
		@cnt = 1
	when 1
		if warrior.look[0].enemy? || warrior.look[1].enemy? || warrior.look[2].enemy?
			warrior.shoot!
		else
			@cnt = 2
		end
	when 2
		warrior.pivot!
		@cnt = 3
	when 3
		if warrior.look[0].enemy? || warrior.look[1].enemy? || warrior.look[2].enemy?
                        warrior.shoot!
		elsif warrior.feel.captive?
                        warrior.rescue!
			@cnt = 4
		else
			warrior.walk!
		end
	when 4  
		if warrior.feel.captive?
			warrior.rescue!
		else
			warrior.pivot!
			@cnt = 5
		end
	when 5
		if warrior.feel.captive?
                        warrior.rescue!
                else
                        warrior.walk!
		end
	end
  end
end

