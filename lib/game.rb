class Game

attr_reader :current_turn

  def initialize(player1, player2)
    @players = [player1, player2]
    @current_turn = player1
  end

  def player_1
    @players.first
  end

  def player_2
    @players.last
  end

  def attack(target)
    target.get_damaged
  end

  def current_turn
    @current_turn = player_1
  end

  def switch_turn
    if @current_turn = player_1
      @current_turn = player_2
      player_2
    else
      @current_turn = player_1
      player_1
    end
  end


end
