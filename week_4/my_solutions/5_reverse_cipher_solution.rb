# U2.W4: Refactor Cipher Solution


# I worked on this challenge [by myself, with: ].


# 1. Solution
# Write your comments on what each thing is doing. 
# If you have difficulty, go into IRB and play with the methods.
# Also make sure each step is necessary. If you don't think it's necessary
# Try implementing the code without it. 

def translate_to_cipher(sentence)
  alphabet = ('a'..'z').to_a #makes an array with all the letters in the alphabet
  cipher = Hash[alphabet.zip(alphabet.rotate(4))] #makes a hash with the alphabet rotated 4 times
  spaces = ["@", "#", "$", "%", "^", "&", "*"] # makes an array of symbols to use instead of spaces
  
  original_sentence = sentence.downcase # turned the sentence downcase
  encoded_sentence = [] #defined an array to returne
  original_sentence.each_char do |element| # will loop true every character in the string
    if cipher.include?(element) # testing if the cipher includes the letter
      encoded_sentence << cipher[element] # if it does it puts in the letter from the chipher that is rotated 4 times
    elsif element == ' ' # tests if the character is a space
      encoded_sentence << spaces.sample # returns a random symbol from the spaces array
    else 
      encoded_sentence << element # returns the same as the imput if it is not a space or letter
    end
  end
  
  return encoded_sentence.join
end


# Questions:
# 1. What is the .to_a method doing?
# .to_a is turing the letters a to z in to a array
# 2. How does the rotate method work? What does it work on?
# the rotate method will turn the array around the amount of times spesified in the parameters
# 3. What is `each_char` doing?
# that is a loop that will run true ech character in a string
# 4. What does `sample` do?
# the .sample will return a random element from an array
# 5. Are there any other methods you want to understand better?
# no, i think i understood all of it
# 6. Does this code look better or worse than your refactored solution
#    of the original cipher code? What's better? What's worse?
# this looks alot better, i dident know of alot fo the ways that is used here
# 7. Is this good code? What makes it good? What makes it bad?
# i would say this is a good code, it is short and easy to understand


# 1. DRIVER TESTS GO BELOW THIS LINE
# Does this return the same thing every time?
# no it does not, the spaces will be turned in to a random symbol from the spaces array
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")


# 5. Reflection 
# I felt this challenge was pritty easy after we had done the cipher challenge, i knew most of the code, and it was pritty easy sto find out what the rest did.
# I learned some methods that i probably will have use for later.
