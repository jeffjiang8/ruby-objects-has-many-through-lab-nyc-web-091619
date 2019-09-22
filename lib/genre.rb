class Genre

    attr_reader :name,:genre

    @@all = []

    def initialize(name)
        @name = name
        @genre = genre
        @@all << self
    end

    def self.all
        @@all
    end 

    def songs
        Song.all.select do |song|
            song.genre == self
        end 
    end 

    def artists
        songs.map(&:artist)
    end 

    def add_song(song)
        songs << song
    end
end # end of Genre

