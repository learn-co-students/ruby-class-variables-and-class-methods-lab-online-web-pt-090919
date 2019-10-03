require "pry"


class Song
  
  @@count = 0
  @@artists = []
  @@genres = []
  @@genre_count = {}
  @@artist_count = {}
  
  attr_accessor :name, :artist, :genre
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists.push(artist)
    @@genres.push(genre)
  end
  
  def self.count
    @@count
  end
  
  def self.genres
    counter = 0
    return_array = []
    @@genres.each do |genre|
      counter += 1
      unless genre == @@genres[counter]
        return_array.push(genre)
      end
    end
    return_array
  end
  
  def self.artists
    counter = 0
    return_array = []
    @@artists.each do |artist|
      counter += 1
      unless artist == @@artists[counter]
        return_array.push(artist)
      end
    end
    return_array
  end
  
  def self.genre_count
    return_hash = {}
    @@genres.each do |genre|
      if return_hash[genre]
        return_hash[genre] += 1
      else
        return_hash[genre] = 1
      end
    end
    return_hash
  end
  
  def self.artist_count
    return_hash = {}
    @@artists.each do |artist|
      if return_hash[artist]
        return_hash[artist] += 1
      else
        return_hash[artist] = 1
      end
    end
    return_hash
  end
  
  
end
  
  
  
  
  
    