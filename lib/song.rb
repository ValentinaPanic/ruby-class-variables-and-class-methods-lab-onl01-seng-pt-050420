require 'pry'
class Song
    attr_accessor :name, :artist, :genre
    @@count = 0

    @@artists = []
    @@genres = []
    def initialize(song_name, artist_name, genre_name)
        @name = song_name
        @artist = artist_name
        @genre = genre_name
        @@count +=1
        @@artists << @artist
        @@genres << @genre

    end
    def self.count
        @@count
    end
    def self.artists
         if @@artists.include?(@artist)
             @@artists
         else

             @@artists << @artist
         end
        
       return @@artists.uniq!.compact
    end
    def self.genres
        if @@genres.include?(@genre)
            @@genres
        else
            @@genres << @genre

        end
        @@genres.uniq!.compact
    end
    def self.genre_count
        genres_hash = {}
        
        @@genres.map do |genre, songs|
            if genres_hash.include?(genre)
                genres_hash[genre] +=1
            else
            genres_hash[genre] = 1
            end
             
        end
        return genres_hash
    end
     def self.artist_count
        artists_hash={}
        @@artists.map do |artist, song|
            if artists_hash.include?(artist)
            artists_hash[artist] +=1
        else
            artists_hash[artist]=1
        end
    end
        return artists_hash

     end
end