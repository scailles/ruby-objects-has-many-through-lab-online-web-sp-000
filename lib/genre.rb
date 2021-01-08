class Genre 
  
attr_accessor :name, :song, :artist

@@all=[]


def initialize(name)
  @name = name
  @@all << self
end


def songs 
  Song.all.select do |song|
    song.genre == self
  end
end

def artists
   songs.map{|song| song.artist}
end


def self.all
  @@all
end


end
  