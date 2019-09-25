require "pry"

class Song 
  
  attr_accessor :name, :artist, :genre
  
  @@count = 0
  @@genres = []
  @@artists = []
  
  def initialize(name, artist, genre)
    @name = name 
    @artist = artist 
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist
  end
  
  def self.count 
    @@count
  end
  
  def self.genres 
    @@genres.uniq
  end
  
  def self.artists 
    @@artists.uniq
  end
  
  def self.genre_count
    genre_amt = {}
    @@genres.each do |genre|
      if genre_amt.has_key?(genre)
        genre_amt[genre] += 1
      else
        genre_amt[genre] = 1
      end
    end
    genre_amt
  end
  
  def self.artist_count
    artist_amt = {}
    @@artists.each do |artist|
      if artist_amt.has_key?(artist)
        artist_amt[artist] += 1
      else
        artist_amt[artist] = 1
      end
    end
    artist_amt
  end
  
end





