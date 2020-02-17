# CLi controller
require_relative './environment'
require_relative  './scraper'
require 'pry'

class Billboard100::CLI

def call
greet_user
Scraper.get_data
list_songs
prompt 
end

def greet_user
    puts "hello!"
end

def list_songs
    Song.all.each do |song|
         p "#{song.rank}:  #{song.name} "
    end
end

def prompt 
    msg =  "If you want to know more about the song, type in the name of the song!"
    return_msg = "Type 'Top' To see the list again."
    error = "Sorry, there was a problem, can you try again?"
    puts msg 
    input = gets.strip.downcase
    song_info = Song.all.detect  {|song| input == song.name.downcase }
    binding.pry 
        unless input == song_info
          puts error
          input = gets.strip.downcase
          song_info
binding.pry
        end
            #binding.pry 
    #this logic chain works.
        while input != nil && song_info != nil do 
            puts " Rank:    #{song_info.rank} "
            puts " Name:       #{song_info.name} "
            puts " Artist:          #{song_info.artist} "
            puts " Peak:                #{song_info.peak} "
            return_msg
            list_songs
        end
        input = gets.strip.downcase

    




end

def information
    return_msg = "Type 'Top' To see the list again."
        puts " Rank:    #{song_info.rank} "
        puts " Name:       #{song_info.name} "
        puts " Artist:          #{song_info.artist} "
        puts " Peak:                #{song_info.peak} "



end

end
