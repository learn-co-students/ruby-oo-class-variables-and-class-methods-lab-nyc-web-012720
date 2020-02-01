require 'pry'

class Song

    attr_accessor :name, :artist, :genre

    @@count = 0
    @@artists = []
    @@genres = []
    @@genre_count = {}
    @@artist_count = {}
    @@all_genres = []
    @@all_artists = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists << self.artist
        @@genres << self.genre
        @@all_genres << self.genre
        @@all_artists << self.artist
    end

    def self.all
        @@all
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

    def self.all_genres
        @@all_genres
    end

    def self.all_artists
        @@all_artists
    end

    def self.genre_count
        genres_hash = Hash.new(0)
        @@genres.each { |genre| genres_hash[genre] += 1 }
        return genres_hash
    end

    def self.artist_count
        artists_hash = Hash.new(0)
        @@artists.each { |artist| artists_hash[artist] +=1 }
        return artists_hash
    end

end
