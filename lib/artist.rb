require 'pry'

class Artist
  attr_accessor :name
  attr_reader :songs
  extend Test::Memorable, Test::Findable
  include Test::Paramable
  
  @@artists = []

  def initialize
    @@artists << self
    @songs = []
  end

  def self.all
    @@artists
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end

#  def to_param
#    name.downcase.gsub(' ', '-')
#  end
end
