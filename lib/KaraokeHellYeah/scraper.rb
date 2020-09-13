class KaraokeHellYeah::Scraper 

 def self.scrape_songs
 page = Nokogiri::HTML(open("https://genius.com/#top-songs")) 
 @songs = page.css(".ChartSongdesktop__Title-sc-18658hh-3")
 @artists = page.css(".ChartSongdesktop__Artist-sc-18658hh-5")
 @songs.zip @artists
 @songs.zip(@artists).each do |song, artist|
 name = song.text
 artist = artist.text
 KaraokeHellYeah::Songs.new(name,artist,@url)
 end
    
 def self.scrape_lyrics(user_selection)
  page = Nokogiri::HTML(open("https://genius.com/#top-songs")) 
  @url = page.css('div#top-songs a').map {|link| link['href']}
  print_lyrics = @url[user_selection - 1]
  scrape_2 = Nokogiri::HTML(open(print_lyrics))
  puts scrape_2.css(".lyrics").text
  end 
 end 
end 


