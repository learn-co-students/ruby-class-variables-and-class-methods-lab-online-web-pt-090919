class Song 
  attr_accessor :name, :artist, :genres 
   
   @@genre_count = 0 
  
  def initialize(name)
    @name = name 
    @artist = {}
    @genres = {}
    @@genre_count += 1 
  end
  def self.count 
    @@genre_count
  
  def artist = (artist_name)
    @artist = artist_name
  end
  
  def genre
    @genre
  end
  