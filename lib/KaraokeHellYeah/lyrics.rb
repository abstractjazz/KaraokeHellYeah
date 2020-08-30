class KaraokeHellYeah::Lyrics

class KaraokeHellYeah::Songs 
  
  @@all = []
  attr_accessor :name, :artist 


 def initialize()
  
  @name = name
  @artist = artist 

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

#page.css("div#top-songs a")[0]["href"]