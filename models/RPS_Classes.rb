class Player 
	attr_accessor :name, :choice, :wins, :losses
	def initialize
		puts "What is your name?"
		@name = gets.chomp
		@wins = 0
		@losses = 0
		
	end 
end

class RPS_game 
	def initialize(player)
	puts "r, p, s?"
	@player = player
	@choice = gets.chomp
	@computer_choice = ["r", "p", "s"].sample
	puts @computer_choice
	play_rps
end 
	def play_rps
		case @choice
		when "r"
				case @computer_choice
				when "r"
					puts "You Tie! Your record is: #{@player.wins}-#{@player.losses}"
					

				when "s"	
					@player.wins = @player.wins + 1 
					puts "You Win! Your record is: #{@player.wins}-#{@player.losses}"
					
					

				when "p"	
					@player.losses = @player.losses + 1
					puts "You Lose! Your record is: #{@player.wins}-#{@player.losses}"
					
					
				end
		when "p"
				case @computer_choice
				when "p"
					puts "You Tie! Your record is: #{@player.wins}-#{@player.losses}"
					

				when "r"
					@player.wins = @player.wins + 1 
					puts "You Win! Your record is: #{@player.wins}-#{l@player.losses}"
					
					

				when "s"		
					@player.losses = @player.losses + 1
					puts "You Lose! Your record is: #{@player.wins}-#{@player.losses}"
					 
					
				end
		
		when "s"
				case @computer_choice
				when "s"

					puts "You Tie! Your record is: #{@player.wins}-#{@player.losses}"
					

				when "p"
					@player.wins = @player.wins + 1 
					puts "You Win! Your record is: #{@player.wins}-#{@player.losses}"
			
					

				when "r"
					@player.losses = @player.losses + 1
					puts "You Lose! Your record is: #{@player.wins}-#{@player.losses}"
					
					
				end
		end
	end
end
player = Player.new 
RPS_game.new(player)

