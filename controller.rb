require 'sinatra'
require_relative 'models/RPSclasses.rb'
enable :sessions


get '/' do 
	session[:wins] ||= 0
	session[:losses] ||= 0
	erb :index
end

post '/' do
	p1 = Player.new(params[:name])
	p1.weapon = params[:weapon]
	game = Game.new(p1)
	@game_time = game.game_time

	if p1.wins != 0
		session[:wins] += p1.wins
	end
	if p1.losses != 0 
		session[:losses] += p1.losses
	end


	erb :index

end
