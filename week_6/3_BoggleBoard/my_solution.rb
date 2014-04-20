# U2.W6: Create a BoggleBoard Class


# I worked on this challenge [by myself, with: ].


# 2. Pseudocode



# 3. Initial Solution
def nd
  raise "Not a diagonal!" unless yield
end
class BoggleBoard
	def initialize(board)
		@board = board
	end
	def get_diagonal(x,y)
		check_diagonal(x,y)
		x3 = []
		if x[0]>y[0]
				u = x[0] - y[0]
			else 
				u = y[0] - x[0]
			end
		
		for z in 0..u
			x1 = []
			if x[0]>y[0]
				x1[0] = x[0]- z
			else 
				x1[0] = x[0]+ z
			end
			if x[1]>y[1]
				x1[1] = x[1]- z
			else 
				x1[1] = x[1]+ z
			end
			x2 = []
			x2<<x1[0]
			x2<<x1[1]
			x3 << x2
		end
		return x3.map { |coord| @board[coord.first][coord.last]}.join("")
	end
	def check_diagonal(x,y)
		coords = []
		2.times do |z|
			coords[z] = y[z]-x[z].to_f
			coords[z] = x[z]-y[z].to_f if x[z]>y[z]
		end
		nd {coords[0]/coords[1] == 1}
	end
	def get_row(row)
		y = @board.map{|x| x}
		return y[row]
	end
	def get_col(col)
		return @board.map{|x|x[col]}
	end
	def create_word(*coords)
		coords.map { |coord| @board[coord.first][coord.last]}.join("")
	end
end
 
 
dice_grid = [["b", "r", "a", "e"],
             ["i", "o", "d", "t"],
             ["e", "c", "l", "r"],
             ["t", "a", "k", "e"]]

boggle_board = BoggleBoard.new(dice_grid)
 
p boggle_board.get_diagonal([1,3], [3,1])

# 4. Refactored Solution
#p boggle_board.create_word([0,1])





# 1. DRIVER TESTS GO BELOW THIS LINE
# create driver test code to retrieve a value at a coordinate here:
# implement tests for each of the methods here:
#p boggle_board.create_word([1,2], [1,1], [2,1], [3,2]) == "dock"
#p boggle_board.get_col(1) == ["r","o","c","a"]
#p boggle_board.get_row(2) == ["e","c","l","r"]
#

# 5. Reflection 
# this was a pritty hard challenge and i used alot of time to get the get diagonal mehtod to work.