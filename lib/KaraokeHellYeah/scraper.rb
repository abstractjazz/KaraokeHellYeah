class KaraokeHellYeah::Scraper 

  def self.scrape_songs
    page = Nokogiri::HTML(open("https://genius.com/#top-songs")) 
    # chosen_song = gets.strip.to_i
    lyric_selector = gets.strip.to_i
    
    @songs = page.css(".ChartSongdesktop__Title-sc-18658hh-3")
    @artists = page.css(".ChartSongdesktop__Artist-sc-18658hh-5")
    @url = page.css('div#top-songs a').map {|link| link['href']}
    
    # @url = page.css("div#top-songs a")[lyric_selector]["href"]
    # # binding.pry
  
    @songs.zip @artists
    @songs.zip(@artists).each do |song, artist|
    name = song.text
    artist = artist.text
    
    def self.lyrics 
    page = Nokogiri::HTML(open(@url))   
    puts page.css(".lyrics").text
    # binding.pry
    end 
  
  KaraokeHellYeah::Songs.new(name,artist,@url)
    end
  end 
end 


