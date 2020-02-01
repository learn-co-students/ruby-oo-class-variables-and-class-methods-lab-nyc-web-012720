class Song
    
    attr_accessor :name, :artist, :genre

    @@count = 0
    @@artists = []
    @@genres = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre 
        @@count +=1
        @@artists << artist
        @@genres << genre 
    end 

    def self.count
        @@count
    end 

    def self.artists
        @@artists.uniq
    end 

    def self.genres
        @@genres.uniq
    end 

    def self.genre_count
        genre_counter = {}
        self.genres.each do |genre|
            counter = @@genres.select do |g|
                g == genre
            end 
            genre_counter[genre] = counter.length
        end 

        genre_counter
    end 

    def self.artist_count
        artist_counter = {}
        self.artists.each do |artist|
            counter = @@artists.select do |a|
                a == artist
            end 
            artist_counter[artist] = counter.length
        end 
        
        artist_counter
    end 
    
end 

# my_way = Song.new()