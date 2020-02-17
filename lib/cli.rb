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
goodbye 
end

def greet_user
    puts "hello!"
    puts "========== Welcome to the Billboard 100 app! ==========\n"
end

def list_songs
                    puts "========= Top Songs ==================="
    Song.all.each do |song|
         p "#{song.rank}:  #{song.name} "
    end
end

def prompt 
    msg =  "If you want to know more about the song, type in the name of the song!"
    exit_msg = "Type Done! to quit the program."
    error = "Sorry, there was a problem, can you try again?"
    puts msg 
    puts exit_msg 
    input = gets.strip.downcase
    song_info = Song.all.detect  {|song| input == song.name.downcase }
   # binding.pry 
    #this logic chain works.
    if input.downcase == "Done!".downcase
        puts "Thanks for stopping by!"
        exit!
    elsif song_info
        puts "============================"
            puts " Rank:    #{song_info.rank} "
            puts " Name:       #{song_info.name} "
            puts " Artist:          #{song_info.artist} "
            puts " Peak:                #{song_info.peak} "
            puts "============================"
            input
            song_info
            list_songs
            prompt
            exit_msg
    elsif song_info == nil
        puts "looks like there was a problem, try again?"
        prompt
        exit_msg
    end





end

end
