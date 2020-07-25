class KaraokeHellYeah::CLI

  def call
    puts "Hello, welcome to KaraokeHellYeah. These are the top songs of the week.
    Enter 1-10 to see the lyrics to your new favorite song ;)."
    #get_lyrics_for(song)
    #list_lyrics
    get_top_songs
  end

  def get_top_songs
    #to be scraped
    @songs = ['Ballin', "FunkFlex", "Jazz","Coldstone"]
  end
binding.pry

  def get_user_song
  #list_songs
    @songs.each.with_index() do  |song, index|
    puts "#{index +1}", "#{song}"
 end

def list_months
  @months.each_with_index do |month, index|
    puts "#{index}", "#{month}"
  end
end

#   def list_songs
#     songs = ['']
#     songs
#   end
# end
