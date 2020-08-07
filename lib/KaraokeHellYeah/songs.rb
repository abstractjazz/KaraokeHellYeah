class KaraokeHellYeah::Songs 
  
  @@all = []
  attr_accessor :name, :artist 


  def initialize(name, artist)
  
  @name = name 
  @artist = artist 
  save
  end 

  def self.all

  @@all 

  end 
  
  def save 
    
  @@all << self
  
  end 
end 