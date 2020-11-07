class Song
    
    @@count = 0
    @@artists = []
    @@genres = []
    @@genres_hash = {}
    @@song_hash = {}
    
    attr_accessor :name, :artist, :genre

    def initialize(name, artist, genre)
        @@count += 1
        @@artists << artist         
        @@genres << genre
        @name = name 
        @artist = artist
        @genre = genre
    end

    def self.count 
        @@count
    end

    def self.artists 
        @@artists.uniq!
    end 

    def self.genres
        @@genres.uniq!
    end 

    def self.genre_count 
        @@genres.each do |genre|
            if @@genres_hash.key?(genre)
                @@genres_hash[genre] += 1
            else 
                @@genres_hash[genre] = 1
            end 
        end 
        @@genres_hash
    end 

    def self.artist_count 
        @@artists.each do |artist|
            if @@song_hash.key?(artist)
                @@song_hash[artist] += 1
            else
                @@song_hash[artist] = 1
            end
        end
        @@song_hash
    end 
end
