# U2.W5: Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input: a array of sides
# Output: return a random element in the array
# Steps: define the instance variable sides
# when sides is called, return the length of the array
# wehn roll is called return a random element from the array.


# 3. Initial Solution

#class Die
#	def initialize(sides)
#		@sides = sides
#	end
#	def sides
#		return @sides.length
#	end
#	def roll
#		return @sides[rand(@sides.length)]
#	end
#end



# 4. Refactored Solution


class Die
	def initialize(sides)
		unless sides.length >0
    	raise ArgumentError.new("Need more than 0 arguments")
  	end
		@sides = sides
	end
	def sides
		return @sides.length
	end
	def roll
		return @sides[rand(@sides.length)]
	end
end



# 1. DRIVER TESTS GO BELOW THIS LINE
test1 = Die.new(('a'..'c').to_a)
test2 = Die.new((1..15).to_a)
#test3 = Die.new([])#ERROR
puts test1.sides == 3
puts test2.sides == 15
puts ('a'..'c').to_a.include?(test1.roll)
puts (1..15).to_a.include?(test2.roll)


# 5. Reflection 
# This challenge was wery simelar to the last one, and i felt this wnet pritty well.
