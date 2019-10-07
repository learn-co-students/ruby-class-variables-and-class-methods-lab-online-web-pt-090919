require 'pry'
class Song
  attr_accessor :name, :artist, :genre
  attr_reader :count, :genres, :artists, :genre_count, :artist_count  

  @@count = 0 
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @@count += 1
    @@genres << genre
    @@artists << artist
    @name = name
    @artist = artist
    @genre = genre
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
     @count = @@count
   end
  
  def self.artists
    @@artists.uniq
  end
  
  def self.genres
    @@genres.uniq
  end

  
  def self.genre_count
    genre_count = Hash.new(0)
    @@genres.each do |key|
      genre_count[key] += 1
    end
    genre_count.each {|genre,num|}
  end
  
  def self.artist_count
    artist_count = Hash.new(0)
    @@artists.each do |key|
      artist_count[key] += 1
    end
    artist_count.each {|artist,num|}
  end
  
end