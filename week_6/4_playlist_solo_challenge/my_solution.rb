# U2.W6: Create a Playlist from Driver Code


# I worked on this challenge [by myself, with: ].


# Pseudocode



# Initial Solution
class Song
	def initialize(title, artist)
		@title = title
		@artist = artist
    end

    def play
    	puts "Now playing #{@title} by #{@artist}."
    end
end

class Playlist
	def initialize(*title)
		@stored_playlist = []
		title.each do |title|
      	@stored_playlist << title
		if @stored_playlist.count < 1
            puts "Your playlist currently does not contain any songs!"
            end
    end
	end

	def add(*title)
         title.each do |title|
         @stored_playlist << title    
         end
	end

	def num_of_tracks
		puts "Your playlist currently contains #{@stored_playlist.count} songs."
		@stored_playlist.count
	end

	def remove(*title)
        @stored_playlist.delete(title)
        puts "#{title} has been removed from your playlist."
	end

	def includes?(title)
        if @stored_playlist.include?(title) == true
            puts "#{title} is included in your playlist."
        else
            puts "#{title} is not included in your playlist."
        end
	end
    
    def display
    	puts "Your Playlist: "
        @stored_playlist.each do |title|
            puts title
        end
    end

	def play_all
		puts "Now playing all songs in playlist."
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
