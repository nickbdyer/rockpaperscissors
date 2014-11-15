require 'game'

describe "Game" do

  let(:player) { double :player }
  let(:ai)     { double :ai     }


  it "should allow two players to be added to the game" do
    game = Game.new
    game.add_player(player)
    game.add_player(ai)
    expect(game.players).to eq [player, ai]
  end








end