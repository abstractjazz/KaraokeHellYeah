class KaraokeHellYeah::Scraper 

  def self.scrape_songs
    page = Nokogiri::HTML(open("https://genius.com/#top-songs")) 
  
    songs = page.css(".ChartSongdesktop__Title-sc-18658hh-3")
    artist = page.css(".ChartSongdesktop__Artist-sc-18658hh-5")
  
    songs.each do |song|
      name = song.text
    
      
      KaraokeHellYeah::Songs.new(name)
      end
    end 
  end 

 
  
  
  
# def scrape_lyrics 
  
# end 
# end 
