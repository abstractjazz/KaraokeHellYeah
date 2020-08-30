class KaraokeHellYeah::Songs 
  
  @@all = []
  attr_accessor :name, :artist, :url 


 def initialize(name, artist, url)
  
  @name = name
  @artist = artist 
  @url = url 

  save
  end 

  def self.all
  
  KaraokeHellYeah::Scraper.scrape_songs if @@all.empty? 
  @@all 
  
end 
  
  def save 
    
  @@all << self
  
  end 
end 