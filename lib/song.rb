class Song 
  
attr_accessor :name, :artist, :genre 

@@all=[]


def initialize(name, artist, genre)
  @name = name
  @artist= name
  @genre= genre
  @@all << self
end


def self.all
  @@all
end

def artist
  self.artist = @artist
end


end