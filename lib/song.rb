class Song

	attr_accessor :name, :artist, :genre

	@@count = 0
	@@artists = []
	@@genres = []

	def initialize(name, artist, genre)
		@name = name
		@artist = artist
		@genre = genre
		@@count += 1

		@@artists << artist
		@@genres << genre
	end

	def self.count
		return @@count
	end

	def self.artists
		return @@artists.uniq
	end

	def self.genres
		return @@genres.uniq
	end

	def self.genre_count
		result = {}
		@@genres.each{|v| 
			result [v] = 0 unless result[v]
			result [v] += 1
		}
		return result
	end

	def self.artist_count
		result = {}
		@@artists.each{|v| 
			result [v] = 0 unless result[v]
			result [v] += 1
		}
		return result	end

end
