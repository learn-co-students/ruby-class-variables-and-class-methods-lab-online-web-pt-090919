class Song
attr_accessor :name, :artist, :genre
# 1. create a variable to keep track of new songs 
#that are created from the Song class. 
#Set the @@count variable equals to 0
# 2. every time a new song is created @@count should be increased by 1
#write a method .count that retunrs the total of songs created
#write class method .genres that returns an array of all the genres of existing songs
# it should be only unique genres-no duplicates. 
# need a class variable for the genres (@@genres), that's equal to an empty array
#add genres to the array when a new song is created
#write a class method, .artists that returns an array of all
#the artist of the existing songs-should only contain unique artists
#create a class variable @@artists equals to an empty array
#write a class method .genre_count that returns a hash in which 
#keys are the names of each genre. Each genre name should point to
#a value that is the number of songs that have that genre


@@count = 0 

@@genres = []

def self.count
  @@count
end

 def self.genres
    @@genres.uniq
  end
  
  def self.genre_count
    genre_count = {}
    @@genres.each do |genre|
      if genre_count[genre]
        genre_count[genre] += 1 
      else
        genre_count[genre] = 1
      end
    end
    genre_count
  end
  
  @@artists = []
  
   def self.artist_count
    @@artists.inject(Hash.new(0)) { |total, i| total[i] += 1 ;total}
  end
  
  def self.artists
    @@artists.uniq
  end
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @@artists << artist
    @genre = genre
    @@genres << genre
    @@count += 1
  end

end
