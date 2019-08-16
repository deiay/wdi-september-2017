module Flight

  CRUISING_ALTITUDE = 1000

  def fly
    @altitude = CRUISING_ALTITUDE
  end

  def land
    @altitude = 0
  end
end


module Speed

    FAST = 1000

    def run
      @speed = FAST
    end

    def walk
      @speed = 0
    end
end


module Strength

GODLY_POWER = 50

  def initialize(name)
    super(name)
    @power = GODLY_POWER
  end
end

module MartialArts
  def initialize(name)
    super(name)
    @power = 30
  end
end


module Claws
  def initialize(name)
    super(name)
    @power = 25
  end
end

module Regeneration
  FAST_HEAL = 30

  def initialize(name)
    super(name)
    @healing_factor = FAST_HEAL
  end
end

module Genius
  def activate_shield
    @shielded = true
  end

  def take_hit(damage)
    if @shielded
      @shielded = false
    else
      super(damage)
    end
  end
end

module Rich

  SUPER_WEAPON_COST = 1_000_000
  SUPER_DAMAGE = 1000
  INCREMENTAL_FUNDS = 500_000
  INITIAL_FUNDS = 1_000_000

  def initialize(name)
    super(name)
    @money = INITIAL_FUNDS
  end

  def make_money
    @money += INCREMENTAL_FUNDS
  end

  def use_super_weapon(opponent )
    if @money >= SUPER_WEAPON_COST
      opponent.take_hit(SUPER_DAMAGE)
      @money -= SUPER_WEAPON_COST
    end
  end
end
