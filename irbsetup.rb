require './lib/player'
require './lib/game'
require './lib/rock'
require './lib/scissors'
require './lib/paper'
require './lib/ai'

game = Game.new
ai = Ai.new(Rock, Paper, Scissors)
player = Player.new
game.add_player(ai)
game.add_player(player)
ai.make_selection
player.make_selection(Rock)