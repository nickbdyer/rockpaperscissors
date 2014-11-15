class Game

  def initialize
    @player1, player2 = nil, nil
  end

  def add_player(player)
    @player1.nil? ? @player1 = player : @player2 = player
  end

  def players
    @players = [@player1, @player2]
  end











end
