class Game

  attr_reader :player1, :player2

  def initialize
    @player1, @player2 = nil, nil
  end

  def add_player(player)
    raise ("There are already two players.") if has_two_players?
    @player1.nil? ? @player1 = player : @player2 = player
  end

  def players
    @players = [@player1, @player2]
  end

  def evaluate
    return nil if player1.selection == nil
    return "Draw" if player1.selection.class == player2.selection.class 
    return player1 if player1.selection.won?(player2.selection)
    return player2 if player2.selection.won?(player1.selection)
  end

  private

  def has_two_players?
    !player2.nil?
  end

end
