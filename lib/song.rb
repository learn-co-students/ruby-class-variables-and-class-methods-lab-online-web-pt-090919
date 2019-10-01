require 'pry'

class Song
  
  @@count = 0
  @@artists = []
  @@genres = []
  
  def initialize(name, artist, genre)
    @name = name
    @@count += 1
    @artist = artist
    @@artists << artist
    @genre = genre
    @@genres << genre
  end
  
  def name
    @name
  end
  
  def artist
    @artist
  end
  
  def genre
    @genre
  end
  
  def self.count
    @@count
  end
  
  def self.artists
    @@artists.uniq
  end
  
  def self.genres
    unique_g = []
    @@genres.each { |style| unique_g << style unless unique_g.include?(style) }
    unique_g
  end
  
  def self.genre_count
    g_count = {}
    @@genres.uniq.each { |g| g_count[g] = 0 }
    @@genres.each { |gen|
      g_count.keys.each { |g| g_count[g] += 1 if gen == g }
    }
    g_count
  end
  
  def self.artist_count
    a_count = {}
    @@artists.uniq.each { |a| a_count[a] = 0 }
    @@artists.each { |art|
      a_count.keys.each { |a| a_count[a] += 1 if art == a }
    }
    a_count
  end
  
end