# CLi controller
require_relative './environment'
require_relative  './scraper'
require 'pry'
class Billboard100::CLI

def call
greet_user
Scraper.get_data
end

def greet_user
    puts "hello!"
end


end
