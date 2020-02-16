require_relative '../Billboard100/billboard100.rb'



class Artist 
    @@all = []
attr_reader :name, :song, :peak, :peak_date, :FinalScrapper 
def initialize(name)
@name = name 
@songs = []

end

def songs
    @songs
end

def add_song
end


def self.chart_art
    Billboard100::FinalScrapper.artists
    #binding.pry 
end

def self.create
    Artist.chart_art.each do |artist|
    artist = Artist.new(artist)
    @@all << artist 
    end
end

def self.all
    @@all
end

end

binding.pry 