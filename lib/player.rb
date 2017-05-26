

class Player

  attr_reader :name, :hp

  DEFAULT_HP = 60

  def initialize(name, hp = DEFAULT_HP)
    @name = name
    @hp = hp
  end

  def get_damaged
    @hp -= 10
  end

end
