class KaraokeHellYeah::CLI

    def call
      puts "Hello, welcome to KaraokeHellYeah. If you want to know all the words to the best songs, this is the app for you"
    get_top_songs
    list_songs
    get_lyrics_for(song)
    end

    def get_top_songs
      #to be scraped
      @songs = ['Ballin', "FunkFlex", "Jazz","Coldstone","Gutter", "Ricecake", "Cookies","My Juul", "Heart Tales", "That one song"]
    end

    def list_songs
      puts "Enter 1-10 to see the lyrics to your new favorite song."
      @songs.each.with_index(1) do |song, index|
        binding.pry
        puts "#{index}. #{song}"
    end
  end


    def get_lyrics_for(#song)   
      chosen_song = gets.strip
      #binding.pry
      #if !valid_input(chosen_song,@songs)
      #puts "Only the hits! Choose a number from 1-10."
    end


    def valid_input(input, data)
   input.to_i <= data.length && input.to_i > 0
  end
end


#   def list_songs
#     songs = ['']
#     songs
#   end
# end
