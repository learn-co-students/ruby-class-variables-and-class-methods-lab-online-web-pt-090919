require 'pry'

class Song
  attr_accessor :name, :artist, :genre
  
  @@count = 0
  @@artists = []
  @@genres = []
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre
  end
  
  def self.count
    @@count
  end
  
  #class method to returnsan array of all artists of the existing songs
  def self.genres
    # Control for duplicates when you code your .genres class method
    # not when you add genres to the original @@genres array. 
    @@genres.uniq
  end
  
  #class method to returnsan array of all artists of the existing songs
  def self.artists
    @@artists.uniq
  end
  
  def self.genre_count
    genre_hash = {}
    @@genres.each do |genre|
      if genre_hash.include?(genre)
        genre_hash[genre] += 1
      else
        genre_hash[genre] = 1
      end     
    end
    genre_hash
  end
  
  def self.artist_count
    artist_hash = {}
    @@artists.each do |artist|
      if artist_hash.include?(artist)
        artist_hash[artist] += 1
      else
        artist_hash[artist] = 1
      end     
    end
    artist_hash
  end
end
