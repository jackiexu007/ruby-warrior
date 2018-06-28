class Player
  def play_turn(warrior)
        @health = 20 if @health.nil?
        if warrior_need_rest?(warrior)
		if warrior_able_to_rest?(warrior)
			warrior.rest!
		else
			warrior.walk!(:backward)
		end
        else
		if warrior.feel(:backward).captive?
			warrior.rescue!(:backward)
		elsif warrior.feel.empty?
                	warrior.walk!
		else
			warrior.attack!
		end
        end
                @health = warrior.health
  end
  def warrior_under_attack?(warrior)
        @health > warrior.health
  end
  def rest_not_enough?(warrior)
	@health < 15 && warrior_under_attack?(warrior)!=TRUE
  end
  def warrior_need_rest?(warrior)
	rest_not_enough?(warrior)  ||  @health < 10
  end
  def warrior_able_to_rest?(warrior)
	warrior.feel(:backward).empty?!=TRUE && warrior_under_attack?(warrior)!=TRUE
  end
end

