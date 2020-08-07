class KaraokeHellYeah::Songs 
  
  @@all = []
  attr_accessor :name


 def initialize(name)
  
  @name = name 

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