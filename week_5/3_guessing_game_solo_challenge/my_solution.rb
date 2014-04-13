# U2.W5: Build a simple guessing game SOLO CHALLENGE


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input: a random guess
# Output: if the guess ir right, low or high
# Steps: make the @awnser variable to the input
# set the @solved variable to false
# make soved? reture the @solved variable
# maek guess return :correct if the input is right, :high if it is too high and :low if it is too low
# set the @solved variable to true if it is :correct, and to false if it is :high or :low


# 3. Initial Solution

#class GuessingGame
#	def initialize(awnser)
#		@awnser = awnser
#		p "GuessingGame have started!"
#		@solved = false
#	end
#	def solved?
#		return @solved
#	end
#	def guess(x)
#		if x == @awnser
#			@solved = true
#			return ":correct" 
#		end
#		return ":low" if x < @awnser
#		return ":high" if x > @awnser
#	end
#end


# 4. Refactored Solution
class GuessingGame
	def initialize(awnser)
		@awnser = awnser
		p "GuessingGame have started!"
		@solved = false
	end
	def solved?
		return @solved
	end
	def guess(x)
		if x == @awnser
			@solved = true
			return :correct 
		else
			@solved = false
		end
		return :low if x < @awnser
		return :high if x > @awnser
	end
end
# 1. DRIVER TESTS GO BELOW THIS LINE

game = GuessingGame.new(5)
p game.solved? == false
p game.guess(4) == :low
p game.guess(6) == :high
p game.guess(5) == :correct
p game.solved? == true


# 5. Reflection 
# i learned alot form this challenge, and it was a bit hard in the beginning.