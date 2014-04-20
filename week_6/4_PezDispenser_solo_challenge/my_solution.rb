# U2.W6: PezDispenser Class from User Stories


# I worked on this challenge [by myself, with: ].

# 1. Review the following user stories:
# - As a pez user, I'd like to be able to "create" a new pez dispenser with a group of flavors that 
#      represent pez so it's easy to start with a full pez dispenser.
# - As a pez user, I'd like to be able to easily count the number of pez remaining in a dispenser 
#      so I can know how many are left.
# - As a pez user, I'd like to be able to take a pez from the dispenser so I can eat it.
# - As a pez user, I'd like to be able to add a pez to the dispenser so I can save a flavor for later.
# - As a pez user, I'd like to be able to see all the flavors inside the dispenser so I know the order 
#      of the flavors coming up.


# 2. Pseudocode



# 3. Initial Solution

class PezDispenser
	def initialize(flavors)
		@open = true
		@flavors = Hash[ *flavors.collect { |v| [ v, 20/flavors.length ] }.flatten ]
	end 
	def pez_count
		sum = 0
		@flavors.each {|x,y|sum+=y}
		return sum
	end
	def see_all_pez
		@flavors.each {|x,y|puts "You have #{y} #{x} pet's"}
		return puts "In total there is #{pez_count} pez left."
	end
	def add_pez(f)
		has_falvor = false
		@flavors.each_key { |k|has_falvor = true if k == f}
		if has_falvor == true
			@flavors.each { |x,y| @flavors[f] = y+=1}
		else
    	@flavors[f] = 1 unless has_falvor == true
  	end
	end
	def get_pez
		q = @flavors.keys[rand(@flavors.keys.length-1)]
		@flavors[q] -= 1
		return q.capitalize
	end
end
 


# 4. Refactored Solution

class PezDispenser
	def initialize(flavors)
		@open = true
		@flavors = Hash[ *flavors.collect { |v| [ v, 20/flavors.length ] }.flatten ]
	end 
	def pez_count
		sum = 0
		@flavors.each {|x,y|sum+=y}
		return sum
	end
	def see_all_pez
		@flavors.each {|x,y|puts "You have #{y} #{x} pet's"}
		return puts "In total there is #{pez_count} pez left."
	end
	def add_pez(f)
		has_falvor = false
		@flavors.each_key { |k|has_falvor = true if k == f}
		@flavors.each { |x,y| @flavors[f] = y+=1} if has_falvor == true
    @flavors[f] = 1 unless has_falvor == true
	end
	def get_pez
		q = @flavors.keys[rand(@flavors.keys.length-1)]
		@flavors[q] -= 1
		return q.capitalize
	end
end




# 1. DRIVER TESTS GO BELOW THIS LINE

flavors = %w(cherry chocolate cola grape lemon orange peppermint raspberry strawberry).shuffle
super_mario = PezDispenser.new(flavors)
puts "A new pez dispenser has been created. You have #{super_mario.pez_count} pez!"  
puts "Here's a look inside the dispenser:"  
puts super_mario.see_all_pez 
puts "Adding a purple pez."
super_mario.add_pez("purple")   # mmmmm, purple flavor
puts "Now you have #{super_mario.pez_count} pez!"
puts "Oh, you want one do you?"
puts "The pez flavor you got is: #{super_mario.get_pez}"
puts "Now you have #{super_mario.pez_count} pez!"




# 5. Reflection 
# This was a good way fo learning hashes a bit better, i felt i knew most of it tho.