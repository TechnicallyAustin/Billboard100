
class Billboard100::Scraper
def self.get_data
        doc = Nokogiri::HTML(open("https://www.billboard.com/charts/decade-end/hot-100"))
        container = doc.css("article.ye-chart-item")
        limited_array = container[0..9]
        limited_array.each do |song|
            name = song.css("div.ye-chart-item__title").text
            artist = song.css("div.ye-chart-item__artist").text
            peak = song.css("span.decade-end-chart-item__peak-info-data").text
            rank = song.css("div.ye-chart-item__rank").text
            Billboard100::Song.new(rank, name, artist, peak)
        end


        
    end





    


end