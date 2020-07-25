class KaraokeHellYeah::CLI

  def call
    puts "Hello, welcome to KaraokeHellYeah. These are the top songs of the week.
    Enter 1-10 to see the lyrics to your new favorite song ;)."
    #get_lyrics_for(song)
    #list_lyrics
  end

  def get_top_songs(rank, title, artist)
    #to be scraped
    @songs = {rank => "1", title => "butter", artist => "me"}
    @songs
  end
  binding.pry

  def get_user_song
    songs = ['']
  end

  def list_songs
    songs = ['']
    songs
  end
end
