# U2.W4: Title here


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input: thoud take a intager as imput
# Output: return the input seperated with commas
# Steps:
# 1- split the integer into a array
# 2- run a for loop that will print a comma after every 3 numbers
# 3- return a new array


# 3. Initial Solution
#def separate_comma(int)
#	var = []
#	x = int.to_s.split("")
#	y = x.length
#	o = x.length.to_f/3
#	u = o.floor
#	u = u-1 if y%3 == 0
#	u.times {
#		3.times {
#			var.push(x[y-1])
#			y -=1
#		}
#		var.push(",")
#	}
#	y.times {
#		var.push(x[y-1])
#		y -=1
#	}
#	var.reverse!
#	return var.join
#end


# 4. Refactored Solution
def separate_comma(int)
	var = []
	x = int.to_s.split("")
	y = x.length
	o = (y.to_f/3).floor
	o -= 1 if y%3 == 0
	o.times {3.times {var.push(x[y-1]);y -=1};var.push(",")}
	y.times {var.push(x[y-1]);y -=1}
	return var.reverse!.join	
end


# 1. DRIVER TESTS GO BELOW THIS LINE






# 5. Reflection 





