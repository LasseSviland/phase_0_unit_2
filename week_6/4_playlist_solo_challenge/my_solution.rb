# U2.W6: Create a Playlist from Driver Code


# I worked on this challenge [by myself, with: ].


# Pseudocode



# Initial Solution

class Song
	def initialize(title,artist)
		@title = title
		@artist = artist	
	end
	def artist?
		return @artist
	end
		def title?
		#return @title
		p @title
		return @title
	end
	def play
		
	end
end
class Playlist
	def initialize(*list)
		@list = list
	end
	def add(*list)
		@list << list
		@list.flatten!
	end
	def num_of_tracks
		return @list.length
		p @list
	end
	def remove(x)
		@list - [x]
	end
	def play_all
		puts "All songs have been played, your playlist is empty."
		@list = []
	end
	def display
		puts "This is the songs in your playlist:"
		@list.each {|x| x.title?}
	end
	def includes?(x)
		return @list.include?(x)
	end

end
# Refactored Solution






# DRIVER TESTS GO BELOW THIS LINE
one_by_one = Song.new("One by One", "Sirenia")
world_so_cold = Song.new("World So Cold", "Three Days Grace") 
going_under = Song.new("Going Under", "Evanescence")
my_playlist = Playlist.new(one_by_one, world_so_cold, going_under)
lying_from_you = Song.new("Lying From You", "Linkin Park")
angels = Song.new("Angels", "Within Temptation")
 
my_playlist.add(lying_from_you, angels)
p my_playlist.num_of_tracks == 5
going_under.play
my_playlist.remove(angels)
p my_playlist.includes?(lying_from_you) == true
my_playlist.play_all
my_playlist.display





# Reflection 