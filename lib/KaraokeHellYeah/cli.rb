class KaraokeHellYeah::CLI

    def call
      puts "\nWelcome to KaraokeHellYeah. These are the top ten songs on Genius.com\n"
    get_top_songs
    list_songs
    get_user_song
    end

    def get_top_songs
      #to be scraped
      @songs = ['Ballin', "FunkFlex", "Jazz", "Coldstone","Gutter", "Ricecake", "Cookies", "My Juul", "Heart Tales", "That one song"]
    end

    def list_songs
      puts "Type a number 1-10 & get the lyrics to your new favorite song."
      @songs.each.with_index(1) do |song, index|
        #binding.pry
        puts "#{index}. #{song}"
    end
  end


    def get_user_song 
    chosen_song = gets.strip.to_i
    get_lyrics_for(chosen_song) if valid_input(chosen_song, @songs)
   end

    
    def valid_input (user_input, data)
    user_input.to_i <= data.length && user_input.to_i > 0
    end


  def get_lyrics_for(chosen_song)
  song = @songs[chosen_song -1]
  puts "Here are the lyrics to #{song}"
  binding.pry 
  end 
end 



    #   #puts "Only the hits! Choose a number from 1-10."
    # end
#     def valid_input(input, data)
#   input.to_i <= data.length && input.to_i > 0
#   end
# end
 


#   def list_songs
#     songs = ['']
#     songs
#   end
# end
