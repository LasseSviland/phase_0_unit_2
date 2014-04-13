# U2.W5: A Nested Array to Model a Boggle Board

# I worked on this challenge [by myself, with: ].

boggle_board = [["b", "r", "a", "e"],
                ["i", "o", "d", "t"],
                ["e", "c", "l", "r"],
                ["t", "a", "k", "e"]]


# Part 1: Access multiple elements of a nested array

# Pseudocode
# am not sure if i misunerstood this part of the challenge, 
# Initial Solution
#def create_word(board, *coords)
#coords.map { |coord| board[coord.first][coord.last]}.join("")
#end
#
#create_word(boggle_board, [2,1], [1,1], [1,2], [0,3])
#create_word(boggle_board, [0,1], [0,2], [1,2])

# Refactored Solution
def create_word(board, *coords)
coords.map { |coord| board[coord.first][coord.last]}.join("")
end

create_word(boggle_board, [2,1], [1,1], [1,2], [0,3]) 
create_word(boggle_board, [0,1], [0,2], [1,2])

# DRIVER TESTS GO BELOW THIS LINE
p create_word(boggle_board, [2,1], [1,1], [1,2], [0,3]) == "code"
p create_word(boggle_board, [0,1], [0,2], [1,2]) == "rad"

# Reflection 
# i think i might have misunderstood what i was supose to do here..
#-------------------------------------------------------------------------------

# Part 2: Write a method that takes a row number and returns all the elements in the row.  

# Pseudocode
# make the boggle_bord to a map, return the umer form the input in each part of the map.

# Initial Solution
$boggle_board = [["b", "r", "a", "e"],
                ["i", "o", "d", "t"],
                ["e", "c", "l", "r"],
                ["t", "a", "k", "e"]]
#def get_row(row)
#y = $boggle_board.map{|x| x}
#return y[row]
#end
#

# Refactored Solution
def get_row(row)
y = $boggle_board.map{|x| x}
return y[row]
end

# DRIVER TESTS GO BELOW THIS LINE
p get_row(0)	== ["b", "r", "a", "e"]
p get_row(1)	== ["i", "o", "d", "t"]
p get_row(2)	== ["e", "c", "l", "r"]


# Reflection 
# it took some time before i managed to sole this, and i learned alot abot the map


#-------------------------------------------------------------------------------

# Part 3: Now write a method that takes a column number and returns all the elements in the column.

# Pseudocode
# make a map that will reture the number from the imput from each of the arrays
# Initial Solution
#def get_col(col)
#	return $boggle_board.map{|x|x[col]}
#end

# Refactored Solution
def get_col(col)
	return $boggle_board.map{|x|x[col]}
end

# DRIVER TESTS GO BELOW THIS LINE
p get_col(1)	== ["r", "o", "c", "a"]
p get_col(2)	== ["a", "d", "l", "k"]

# Reflection 
# this is pritty much like the last part of this challenge, and i was making this on my way to the result from the last part.