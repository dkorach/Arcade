require 'sinatra'
require_relative 'models/RPS_Classes.rb'


get '/' do 
	erb :index
	
end

post '/' do
	p1 = Player.new(params[:name])

	game = Game.new(p1)

	p1.response = params[:choice]

end
