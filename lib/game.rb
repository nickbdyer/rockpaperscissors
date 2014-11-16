class Game

  attr_reader :player1, :player2

  def initialize
    @player1, @player2 = nil, nil
  end

  def add_player(player)
    @player1.nil? ? @player1 = player : @player2 = player
  end

  def players
    @players = [@player1, @player2]
  end

  def evaluate
    return "Draw" if player1.selection == player2.selection
    return player1 if player1.selection.won?(player2.selection)
    return player2 if player2.selection.won?(player1.selection)
  end

end
