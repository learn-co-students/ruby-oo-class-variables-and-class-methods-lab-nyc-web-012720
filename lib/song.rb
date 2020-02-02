require 'pry'
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
        @@count
    end

    def self.artists
        @@artists.uniq
    end
    
    def self.genres
        @@genres.uniq
    end
    
    def self.artist_count
        hash = {}
        self.artists.each do |artist_name|
           hash[artist_name] = @@artists.count(artist_name)
        end
        hash
    end
    
    def self.genre_count
        hash = {}
        self.genres.each do |genre_name|
           hash[genre_name] = @@genres.count(genre_name)
        end
        hash
    end
end