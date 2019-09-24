class Song 
  @@count = 0
  @@genres = []
  @@artists = []
  @@names = []
  
  def initialize (name, artist, genre)
    @@count += 1
    @genre = genre
    @@genres << genre
    @artist = artist
    @@artists << artist
    @name = name
    @@names << name
  end
 
  attr_accessor :name, :artist, :genre
  
  
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
    @@genres.inject(Hash.new(0)) {
      |total, i| total[i] += 1; total
    }
  end

  def self.artist_count
    @@artists.inject(Hash.new(0)) {
      |total, i| total[i] += 1; total
    }
  end
  
end 