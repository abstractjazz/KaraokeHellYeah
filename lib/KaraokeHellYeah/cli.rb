class KaraokeHellYeah::CLI

    def call
      puts "Hello, welcome to KaraokeHellYeah. These are the top songs of the week.
      Enter 1-10 to see the lyrics to your new favorite song ;)."
    get_top_songs
    list_songs
    end

    def get_top_songs
      #to be scraped
      @songs = ['Ballin', "FunkFlex", "Jazz","Coldstone"]
    end

    def list_songs
      @songs.each.with_index(1) do |month, index|
        puts "#{index}. #{month}"
    end
  end
end


#   def list_songs
#     songs = ['']
#     songs
#   end
# end
