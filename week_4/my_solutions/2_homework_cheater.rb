# U2.W4: Title here


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input: a list fo strings
# Output: a text
# Steps: 
# 1- define essay_writer 
# 2- print the strings in the rigt order and add in other standard text 
#

# 3. Initial Solution
#def essay_writer(title, topic, date, thesis_statment, pronoun)
#  stringsMale = [" He did a lot. I want to learn more about him.",]
#  stringsFemale = [" She did a lot. I want to learn more about her.",]
#  stringsOther = [" was an important person in ", "'s contribution is important."]
#  name = topic.split
#  puts title
#  puts " "
#  if pronoun == "male"
#  	puts "#{topic}#{stringsOther[0]}#{date}.#{stringsMale[0]}"
#  else
#  	puts "#{topic}#{stringsOther[0]}#{date}#{stringsFemale[0]}"
#  end
#  puts "#{thesis_statment} #{name[0]}#{stringsOther[1]}"
#end


# 4. Refactored Solution
def essay_writer(title, topic, date, thesis_statment, pronoun)
  sring = [" He did a lot. I want to learn more about him."," She did a lot. I want to learn more about her."," was an important person in ", "'s contribution is important."]
  stringsFemale = []
  stringsOther = []
  name = topic.split(" ")
  puts title
  puts " "
  puts "#{topic}#{sring[2]}#{date}.#{sring[0]}" if pronoun == "male"
  puts "#{topic}#{sring[2]}#{date}#{sring[1]}" if pronoun == "female"
  puts "#{thesis_statment} #{name[0]}#{sring[3]}"
end



# 1. DRIVER TESTS GO BELOW THIS LINE

essay_writer("The First Shogun", "Tokugawa Ieyasu", 1603, "His most important contribution to history is that he founded the Tokugawa period, a peaceful time that lasted over 200 years.", "male") 





# 5. Reflection 
# am not too hapy about my result, it could probably have ebbn alot better
#  felt this was wery basic and was only too put together strings.
# i dident learn much in this challenge.



