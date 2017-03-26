class Genre
  attr_accessor :songs, :artist, :name

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song) # has many songs
    songs << song
    # adds song to the genre class object's array of songs
  end

  def artists
    songs.collect { |song| song.artist }
    # has many artists, through songs
  end

end
