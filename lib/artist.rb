require "pry"
class Artist
  attr_reader :name, :genres
  attr_accessor :songs
  def initialize(name)
    @name=name
    @songs=[]
  end
  def add_song(song)
    song.artist=self
    @songs << song
  end
  def genres
    @songs.collect {|x|x.genre}
  end
end
