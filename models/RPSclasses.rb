class Player 
	attr_accessor :name, :choice 
	def initialize
		puts "What is your name?"
		@name = gets.chomp
		@wins = 0
		@losses = 0
		
	end 
end

class RPS_game 
	def initialize
	puts "r, p, s?"
	@choice = gets.chomp
	@computer_choice = ["r", "p", "s"].sample
	def play_rps
		case @choice
		when "r"
				case computer_choice
				when "r"
					puts "You Tie! Your record is: #{wins}-#{losses}"
					self.play_rps

				when "s"	
					puts "You Win! Your record is: #{wins}-#{losses}"
					@wins = @wins + 1 
					self.play_rps

				when "p"	
					puts "You Lose! Your record is: #{wins}-#{losses}"
					self.play_rps
					@losses = @losses + 1
				end
		when "p"
				case computer_choice
				when "p"
					puts "You Tie! Your record is: #{wins}-#{losses}"
					self.play_rps

				when "r"
					puts "You Win! Your record is: #{wins}-#{losses}"
					@wins = @wins + 1 
					self.play_rps

				when "s"		
					puts "You Lose! Your record is: #{wins}-#{losses}"
					self.play_rps 
					@losses = @losses + 1
				end
		
		when "s"
				case computer_choice
				when "s"

					puts "You Tie! Your record is: #{wins}-#{losses}"
					self.play_rps

				when "p"

					puts "You Win! Your record is: #{wins}-#{losses}"
					@wins = @wins + 1 
					self.play_rps

				when "r"
				
					puts "You Lose! Your record is: #{wins}-#{losses}"
					self.play_rps
					@losses = @losses + 1
				end
		end
	end
end
# Player.new
# RPS_game.new