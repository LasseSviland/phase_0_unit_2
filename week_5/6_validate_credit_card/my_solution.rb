# U2.W5: Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input:credit card number
# Output: true/false
# Steps:
# define a class to double every secound number in the card number
# make a def to sum all the didgets
# check if the sum of every single didget is devideble by 10
# return a argumetn error if the number isent 16 didgets long
# return true/false if it is valid or not


# 3. Initial Solution

# Don't forget to check on intialization for a card length
# of exactly 16 digits
#class CreditCard
#	def initialize(number)
#		number1 = number.to_s.split('')
#		unless number1.length == 16
#    	raise ArgumentError.new("Card number need to be 16 didgets long.")
#  	end
#		@number = number
#	end 
#		def check_card
#		number1 = @number.to_s.split('')
#		unless number1.length ==16
#    	raise ArgumentError.new("Card number need to be 16 didgets long.")
#  	end
#  	sum = doubleSecound(number1)
#  	if sum %10 == 0
#  		return true
#  	else
#  		return false
#		end
#	end
#	def doubleSecound(cnumber)
#		newNumber =[]
#		8.times do |x|
#			y = x+1
#			z = 17
#			newNumber.push(cnumber[(z-(y*2))].to_i)
#			newNumber.push(((cnumber[(z-(y*2)-1)]).to_i*2))
#		end
#		newString=newNumber.join.to_s.split('')
#		q = 0
#		newString.each {|x|q+=x.to_i}
#		return q
#	end
#end

# 4. Refactored Solution

class CreditCard
	def initialize(number1)
		@number = number1.to_s.split('')
   	raise ArgumentError.new("Card number need to be 16 didgets long.") if @number.length != 16
	end 
	def check_card
  	sum = doubleSecound
  	return true if sum % 10 == 0
  	return false
	end
	def doubleSecound
		newNumber =[]
		8.times do |x|
			newNumber.push(@number[(17-((x+1)*2))].to_i)
			newNumber.push(((@number[(17-((x+1)*2)-1)]).to_i*2))
		end
	 	q = 0
		newNumber.join.to_s.split('').each {|x|q+=x.to_i}
		return q
	end
end

# 1. DRIVER TESTS GO BELOW THIS LINE
card = CreditCard.new(4408041234567893)
p card.check_card == true
card1 = CreditCard.new(1234567890123456)
p card1.check_card == false
card2 = CreditCard.new(1234567890553466)
p card2.check_card == false




# 5. Reflection 
# this was a pritty hard challenge and i learned a bit more about how to split up and sum intergers.