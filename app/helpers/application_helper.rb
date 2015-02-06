def add_player_to_game(game)
    @player = Player.new
    @player.name = params[:player_name]
    game.add_player(@player)
    session[:me] = @player.object_id
end
