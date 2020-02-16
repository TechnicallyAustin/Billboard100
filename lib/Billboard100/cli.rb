# CLi controller

class Billboard100::CLI

def call
puts "Hello!"
end

def list_songs
    counter = 1 
    while counter < Billboard100::FinalScrapper.songs.count do 
    Billboard100::FinalScrapper.songs.each do |song|
        puts "#{counter}. #{song}"
    end
    counter += 1 
end
end

def list_artist
    puts "if you would like to see a list of artist rather than songs type in 'view'and then 'Artists'"
        counter = 1
        while counter < Billboard100::FinalScrapper.artist.count do
        Billboard100::FinalScrapper.artist.each do |artist|
            puts "#{counter}. #{artist}"
        end
        counter += 1
    end


    
end

def greet_user
    puts "Hello, Welcome to the Billboard 100 CLI app!"
end

def prompt
    puts "press 'Enter' to see the top 100 songs from 2010 - 2020"
    #if enter is pressed
    puts "enter the name of a song to see more information about it!"
end



def invalid_input
    puts "Sorry, You may have mispelled the song name, or it could be a problem behind the scenes, Try again?"
    prompt
end


end