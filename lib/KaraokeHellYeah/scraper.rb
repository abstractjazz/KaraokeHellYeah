class KaraokeHellYeah::Scraper 

  
  def self.scrape_songs
    page = Nokogiri::HTML(open("https://genius.com/#top-songs")) 
   
  
    @songs = page.css(".ChartSongdesktop__Title-sc-18658hh-3")
    @artists = page.css(".ChartSongdesktop__Artist-sc-18658hh-5")
  
    
  
    @songs.zip @artists
    @songs.zip(@artists).each do |song, artist|
    name = song.text
    artist = artist.text

    
  def self.scrape_lyrics
  page = Nokogiri::HTML(open("https://genius.com/#top-songs")) 
  @url = page.css('div#top-songs a').map {|link| link['href']}
  user_selection = KaraokeHellYeah::CLI.chosen_song
  @print_lyrics = @url[user_selection]
  scrape_2 = Nokogiri::HTML(open(@print_lyrics))
  puts scrape_2.css(".lyrics").text
  end 
    
   
  KaraokeHellYeah::Songs.new(name,artist,@url)
    end
  end 
end 


