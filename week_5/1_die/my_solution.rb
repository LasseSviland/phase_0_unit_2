# U2.W5: Die Class 1: Numeric


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input:x.roll
# Output:a random number from the sides on the die.
# Steps: define the sides variable
# return the amount of sides if the sides is callled
# return the a random number withing the ranged of the sides variable if the roll is caled.


# 3. Initial Solution

#class Die
#	def initialize(sides)
#		@sides = sides
#	end
#	def sides
#		return @sides
#	end
#	def roll
#		return rand(@sides)+1
#	end
#end



# 4. Refactored Solution

class Die
	def initialize(sides)
		unless sides >1
    	raise ArgumentError.new("Need more than 1 side")
  	end
		@sides = sides
	end
	def sides
		return @sides
	end
	def roll
		return rand(@sides)+1
	end
end




# 1. DRIVER TESTS GO BELOW THIS LINE
test1 = Die.new(4)
test2 = Die.new(50)
#test3 = Die.new(1)#ERROR
puts test1.sides == 4
puts test2.sides == 50
puts (1..6).include?(test1.roll)
puts (1..100).include?(test2.roll)


# 5. Reflection 
#This challenge was pritty easy, i felt i knew how to do oust of it.
#I learned a bit about the argumetn error.