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
    @@genres.uniq!
  end 
  
  def self.artists 
    @@artists.uniq!
  end 
  
  def self.genre_count 
    genre_count = {}
    @@genres.each do |genres|
      if genre_count[genres]
        genre_count[genres] += 1 
      else 
        genre_count[genres] = 1
      end 
    end 
    genre_count
  end 

  def self.artist_count 
    artist_count = {}
    @@artists.each do |artists|
      if artist_count[artists]
        artist_count[artists] += 1 
      else 
        artist_count[artists] = 1
      end 
    end 
    artist_count
    end 
end 

# Each song has a name, an artist, and a genre
#   - The song class should keep track of each of these. 
# Genre Count 
#   - Return a hash of genre keys and number values 
# Artist Count
#   - Return a hash of artist keys and number values 
#
#
#
#