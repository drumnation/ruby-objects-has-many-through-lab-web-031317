class Song
  attr_accessor :artist
  attr_reader :genre

  def initialize(name, genre)
    @name = name
    @genre = genre
    genre.add_song(self)
    # initializes with name and genre
    # calls genre's add_song method to add song to its genre's class array
  end

end
