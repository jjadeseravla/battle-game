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

  def switch_turn
     @current_turn = opponent_of(@current_turn)
  end

  def opponent_of(the_player)
    @players.select{ |player| player != the_player }.first
  end


end
