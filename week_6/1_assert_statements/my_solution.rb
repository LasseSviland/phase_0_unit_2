# U2.W6: Testing Assert Statements


# I worked on this challenge [by myself, with: ].


# 2. Review the simple assert statement

def assert
  raise "Assertion failed!" unless yield
end
 
name = "bettysue"
#assert { name == "bettysue" }
#assert { name == "billybob" }

# 2. Pseudocode what happens when the code above runs
# The code will return a Assertion failed! error unless the name variable is both bettysue and billybob
#
#
# 3. Copy your selected challenge here
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




# 4. Convert your driver test code from that challenge into Assert Statements
test1 = Die.new(('a'..'c').to_a)
test2 = Die.new((1..15).to_a)
test3 = Die.new([])#ERROR
assert { test1.sides == 3}
assert {test2.sides == 15}
assert {('a'..'c').to_a.include?(test1.roll)}
assert {(1..15).to_a.include?(test2.roll)}




# 5. Reflection 
# To use the assert is probably a better way of testing the code then the puts Statements. 