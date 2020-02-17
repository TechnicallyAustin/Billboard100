# CLi controller

class Billboard100::CLI

def call
greet_user
Billboard100::Scraper.get_data
end

def greet_user
    puts "hello!"
end
binding.pry 

end
