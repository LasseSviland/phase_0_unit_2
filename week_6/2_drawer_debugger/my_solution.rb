# U2.W6: Drawer Debugger


# I worked on this challenge [by myself, with: ].


# 2. Original Code

class Drawer
	
	attr_reader :contents
	
	# Are there any more methods needed in this class?
	
	def initialize
	@contents = []
	@open = true
	end
	
	def open
	@open = true
	end
	
	def close
	@open = false
	end 
	
	def add_item(item)
	@contents << item
	end
	
	def remove_item(item = @contents.pop) #what is `#pop` doing?
	@contents.delete(item)
	end
	
	def dump  # what should this method return?
	puts "Your drawer is empty."
	@contents = []
	end
	
	def view_contents
	puts "The drawer contains:" if @contents.length != 0
	dump if @contents.length == 0
	@contents.each {|silverware| puts "- " + silverware.type }
	end
end

class Silverware
	attr_reader :type
	
	# Are there any more methods needed in this class?
	
	def initialize(type, clean = true)
	@type = type
	@clean = clean
	end
	
	def eat
	puts "Eating with the #{@type}"
	@clean = false
	end
	def clean
		puts "Cleaning the #{@type}"
		@clean = true
	end
	
end

knife1 = Silverware.new("knife")
spoon = Silverware.new("spoon")
fork = Silverware.new("fork")
silverware_drawer = Drawer.new
silverware_drawer.add_item(knife1) 
silverware_drawer.add_item(spoon)
silverware_drawer.add_item(fork) 
silverware_drawer.view_contents

silverware_drawer.remove_item
silverware_drawer.view_contents
sharp_knife = Silverware.new("sharp_knife")


silverware_drawer.add_item(sharp_knife)

silverware_drawer.view_contents

removed_knife = silverware_drawer.remove_item(sharp_knife)
removed_knife.eat
removed_knife.clean

silverware_drawer.view_contents
silverware_drawer.dump
silverware_drawer.view_contents #What should this return?


silverware_drawer.add_item(fork) #add some puts statements to help you trace through the code...
#p silverware_drawer.reove_item
fork.eat

#BONUS SECTION
fork.clean
silverware_drawer.dump
# DRIVER TESTS GO BELOW THIS LINE
p silverware_drawer.view_contents == []
test_drawer = Drawer.new
test_drawer.add_item(Silverware.new("test"))
test_drawer.view_contents



# 5. Reflection 
# This was a good challenge to learn how to find the errors, the  code itselft was prity basic