require 'pry'
class Song
    attr_accessor :name, :artist, :genre

    @@count = 0
    @@artists = []
    @@genres = []
    @@genre_count = {}
    @@artist_count = {}
    @@gen_count = 0
    @@art_count = 0

    def initialize(name, artist, genre)
        @name = name
        @@count += 1
        @artist = artist
        @genre = genre
        @@artists << @artist
        @@genres << @genre
        @@genre_count["#{@genre}"] = @@gen_count += 1
        @@artist_count["#{@artist}"] = @@art_count += 1
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
        return @@genre_count
    end

    def self.artist_count
        return @@artist_count
    end
end
