
class Player 
	
	attr_accessor :name, :weapon

	def initialize(name)
		@name = name
	end

	def computer_choice 
		["rock", "paper", "scissors"].shuffle.first
	end 
 
end


class Game 
	def initialize(player)
		@computer = player.computer_choice
		@weapon = player.weapon
		puts @computer
	end

def game_time
	if @computer == "rock" && @weapon == "scissors" 
		then puts "Computer wins!"
	elsif @computer == @weapon
		then puts "It's a tie!"
	elsif @computer == "scissors" && @weapon == "paper"
		then puts "computer wins!"
	elsif @computer == "paper" && @weapon == "rock"
		then puts "Computer Wins"
	elsif @computer == "scissors" && @weapon == "rock"
		then puts "You win!"
	elsif @computer == "paper" && @weapon == "scissors"
		then puts "You win!"
	elsif @computer == "rock" && @weapon == "paper"
		then puts "You Win!"
	end
end

end

victory = Game.new
victory.game_time


