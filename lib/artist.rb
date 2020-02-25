class Artist 
  attr_accessor :name, :songs 
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all  
    @@all
  end
  
  def add_song(song)
    song.artist = self
  end  
  
  def songs 
    Song.all.select do |song|
      song.artist == self
    end
  end
  
<<<<<<< HEAD
  def self.find_or_create_by_name(artist_name)
    if self.find(artist_name)
      self.find(artist_name)
    else
      self.new(artist_name)
=======
  def find_or_create_by_name(artist_name)
    if self.find(artist_name)
      self.find(artist_name)
    else
      self.create(artist_name)
>>>>>>> 3fe509c910ae3ac8a913169a8a3e820bbb35f46c
    end
  end
  
  def self.find(artist_name)
    self.all.find {|artist| artist.name == artist_name}
  end
 
  def print_songs
    self.songs.each {|song| puts song.name}
  end
end



 
 



 




