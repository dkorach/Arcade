
class Player 
	attr_accessor :name, :weapon

	def weapon_choice 
		puts "Choose your weapon: rock, paper or scissors" 
		@weapon = gets.chomp 
	end

	def computer_choice 
		["rock", "paper", "scissors"].shuffle.first
	end 
 
end


class Game 
	def initialize
		player = Player.new
		puts "What's your name!?"
		player.name = gets.chomp
		puts "Welcome #{player.name}!"
		@computer = player.computer_choice
		@weapon = player.weapon_choice
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


