class KaraokeHellYeah::Scraper 

  def self.scrape_songs
    page = Nokogiri::HTML(open("https://genius.com/#top-songs")) 
  
    @songs = page.css(".ChartSongdesktop__Title-sc-18658hh-3")
    @artists = page.css(".ChartSongdesktop__Artist-sc-18658hh-5")
  
    @songs.zip @artists
    @songs.zip(@artists).each do |song, artist|
    name = song.text
    artist = artist.text
  
  KaraokeHellYeah::Songs.new(name, artist)
    end 
  end 
end 

