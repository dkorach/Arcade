
class Player 
	
	attr_accessor :name, :weapon, :wins, :losses

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
	puts @computer
	puts @weapon
	if @computer == "rock" && @weapon == "scissors" 
	 "Computer wins!"
	elsif @computer == @weapon
	 "It's a tie!"
	elsif @computer == "scissors" && @weapon == "paper"
	 "computer wins!"
	elsif @computer == "paper" && @weapon == "rock"
	 "Computer Wins"
	elsif @computer == "scissors" && @weapon == "rock"
	 "You win!"
	elsif @computer == "paper" && @weapon == "scissors"
	 "You win!"
	elsif @computer == "rock" && @weapon == "paper"
	 "You Win!"
	else 
	"You are awesome"
	end
end

end

game = Player.new("game")
victory = Game.new(game)
victory.game_time


