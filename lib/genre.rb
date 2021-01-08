class Genre 
  
attr_accessor :name, :song, :artist


def initialize(name)
  @name = name
end


def songs 
  Song.all.select do |song|
    song.genre == self
  end
end



end
  