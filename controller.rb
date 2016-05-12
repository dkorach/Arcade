require 'sinatra'
require_relative 'models/RPSclasses.rb'


get '/' do 
	erb :index
	
end

post '/' do
	p1 = Player.new(params[:name])
	p1.weapon = params[:weapon]
	game = Game.new(p1)
	@game_time = game.game_time

	erb :index

end
