class KaraokeHellYeah::CLI

    def call
      puts "\nWelcome to KaraokeHellYeah. Below are the top ten songs on Genius.com\n"
      sleep 2
    get_top_songs
    list_songs
    get_user_song
    end

    def get_top_songs
      @songs = KaraokeHellYeah::Songs.all 
    end

    def list_songs
      puts "\nType a number 1-10 & get the lyrics to your new favorite song.\n" 
      sleep 3
      @songs.each.with_index(1) do |song, index|
        puts "\n#{index}. #{song.name} - #{song.artist} #{song.url}"
    end
  end

  def get_user_song 
  @chosen_song = gets.strip.to_i
  chosen_song = @chosen_song
  if chosen_song > 10 || chosen_song < 1
  puts "Only the hits! Choose a number from 1-10."
   get_top_songs
   list_songs
   get_user_song
  else 
  get_lyrics_for(chosen_song)
  chosen_song
   end
 end
 

  def valid_input (user_input, songs)
  user_input.to_i <= songs.length && user_input.to_i > 0
  end

  def get_lyrics_for(chosen_song)
  song = @songs[chosen_song -1]
  puts "Here ya go –– the lyrics to #{song.name}"
  sleep 2
  user_selection = @chosen_song
  lyrics = KaraokeHellYeah::Scraper.scrape_lyrics(user_selection)
  puts lyrics
  puts "Would you like the lyrics to another song? (y/n)?"
  user_input = gets.strip
    if user_input == "y"
     get_top_songs
    list_songs
    get_user_song
    elsif user_input =="n"
    puts "Later!"
    elsif user_input != "y" || "n" 
    puts "Sorry. Too busy jammin to understand. Press y for more songs or any other key to exit."
    user_input = gets.strip
      if user_input == "y"
       get_top_songs
      list_songs
      get_user_song
      else 
      end
    end
 end 
end 