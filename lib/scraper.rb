require_relative './environment'
require 'nokogiri'
require 'pry'
require 'open-uri'
require_relative  './song'
class Scraper
def self.get_data
        doc = Nokogiri::HTML(open("https://www.billboard.com/charts/decade-end/hot-100"))
        container = doc.css("article.ye-chart-item")
        limited_array = container[0..9]
        limited_array.each do |song|
            name = song.css("div.ye-chart-item__title").text.split("\n").delete_if{|i| i == "" || i == " "}.join
            artist = song.css("div.ye-chart-item__artist").text.split("\n").delete_if{|i| i == "" || i == " "}.join
            peak = song.css("span.decade-end-chart-item__peak-info-data").text
            binding.pry
        
            rank = song.css("div.ye-chart-item__rank").text.split("\n").delete_if{|i| i == "" || i == " "}.join
            Song.new(rank, name, artist, peak)
        end


        
    end





    


end