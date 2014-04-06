# U2.W4: Title here


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input: array of names
# Output: array of arrays with the names gorroped
# Steps:
# 1- make a variable for the amount of groops
# 2- set the variable to the lenght of the array devided on 4, and rounded to the closest hole number
# 3- make a array with the amount fo groups 
# 4- make a loop that will loop the groups amount of thimes
# 5- make a variable to define how maby people there are left and devide it on the amount of groups left
# 6- make a loop for the amount of people that shoud be in that group and pus them in to a array
# 7- put the array in to the groups array to return
# 8- reset the array that was used for the last group
# 9- return the groups array

# 3. Initial Solution
#def devide(arr)
#	groups = ((arr.length.to_f / 4)).round
#	group = Array.new()
#	people = arr.length
#	peoplenum = 0
#	for z in 1..groups
#		y= []
#		peopleg = ((people - peoplenum) / groups ).round
#		for x in 1..peopleg
#			y.push(arr[peoplenum])
#			peoplenum += 1
#		end
#		group.push(y)
#		groups -= 1
#	end
#	
#	return group
#end




# 4. Refactored Solution
def devide(arr)
	groups = (arr.length.to_f / 4).round
	group = Array.new()
	peoplenum = 0
	for z in 1..groups
		y= []
		peopleg = ((arr.length.to_f - peoplenum) / groups).round
		for x in 1..peopleg
			y.push(arr[peoplenum])
			peoplenum += 1
		end
		group.push(y)
		groups -= 1
	end
	return group
end






# 1. DRIVER TESTS GO BELOW THIS LINE

q = devide(["Adeoye Jaiyeola","Chantelle Turnbull","Charu Sharma","Danielle Adams","David Kerr","Dinesh Rai","Gregory Knudsen","Ian Greenough","Jake Huhn","Jason Matney","Jessica Tatham","John P Quigley","Judy Jow","Justin Lee","Kai Prout","Ken Sin","Kennedy Bhagwandeen","Kevin Zhou","Lasse Sviland","Natalie Baer","Nick Giovacchini","Samuel Arkless","Timothy McClung"])
#q = devide([1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,])
q.each {|w|p w}




# 5. Reflection 

# I used alot of time on this and har problems making it return the right amount of people in the end.
# 



