class KaraokeHellYeah::CLI

    def call
      puts "\nWelcome to KaraokeHellYeah. These are the top ten songs on Genius.com\n"
    get_top_songs
    list_songs
    get_user_song
    end

    def get_top_songs
      #to be scraped
      # KaraokeHellYeah::Songs.new("Cool", "Asap")
      # KaraokeHellYeah::Songs.new("Okay", "Frank Ocean")
      @songs = KaraokeHellYeah::Songs.all 
    end

    def list_songs
      puts "Type a number 1-10 & get the lyrics to your new favorite song.\n" 
      @songs.each.with_index(1) do |song, index|
        #binding.pry
        puts "\n#{index}. #{song.name} - #{song.artist} #{song.url}"
    end
  end


    def get_user_song 
    @url = KaraokeHellYeah::Scraper.scrape_lyrics
    chosen_song = gets.strip.to_i
   get_lyrics_for(chosen_song) if valid_input(chosen_song, @songs)
   end

    def valid_input (user_input, data)
    user_input.to_i <= data.length && user_input.to_i > 0
    end

  def get_lyrics_for(chosen_song)
  song = @songs[chosen_song -1]
  puts "Here are the lyrics to #{song.name}"
  @lyrics = KaraokeHellYeah::Scraper.scrape_lyrics  
  @url = @lyrics[chosen_song-1]
  page = Nokogiri::HTML(open(@url))
  puts page.css(".lyrics").text
  end
end 
 

  
# puts "\nWelcome to KaraokeHellYeah. Press enter to see the top ten songs on Genius.com\n"
#     get_top_songs
#     list_songs
#     get_user_song
#     end
    
#     def get_top_songs
#   @songs = KaraokeHellYeah::Songs.all 
#   @url = KaraokeHellYeah::Scraper.scrape_lyrics
#     end

#     def list_songs
#       puts "\nType a number 1-10 & get the lyrics to your new favorite song.\n" 
#       @songs.each.with_index(1) do |song, index|
#         puts "\n#{index}. #{song.name} - #{song.artist} #{song.url}\n"
#     end
#   end

#   def get_user_song 
#   chosen_song = gets.strip.to_i
#   if valid_input(chosen_song, @songs)
#   get_lyrics_for(chosen_song) 
#   else 
#   puts "Only the hits. Choose a number from 1-10."
#   sleep 3
#   call
#   end
# end 

#     def valid_input (user_input, data)
#     user_input.to_i <= data.length && user_input.to_i > 0
#     end
    
# def get_lyrics_for(chosen_song)
# song = @songs[chosen_song -1]
# puts "Press enter to see the lyrics for #{song.name}"
# @lyrics = KaraokeHellYeah::Scraper.scrape_lyrics
#   puts @lyrics
#   puts "Would you like the lyrics to another song? (y/n)"
#   user_response = gets.strip 
#   if user_response == "n"
#   puts "Later!"
#   elsif user_response == "y" 
#   call
#   elsif user_response == /\b(?!y|n)\b\S+/
#   puts "Sorry too busy jammin' to understand. Please type only the letter (y/n)." 
#   sleep 4
#   list_songs 
#   else 
# end
# end 
