require_relative './artist.rb'
require_relative './billboard100.rb'



class Artist < FinalScrapper
    @@all = []
attr_reader :name, :song, :peak, :peak_date, :FinalScrapper 
def initialize(name)
@name = name 
@songs = []
@@all << self
end

def songs
    @songs
end

def add_song
end


def self.chart_art
    FinalScrapper.artists
    #binding.pry 
end

def self.create(artist)
    artist = Artist.new(artist)
end

def self.all
    @@all
end

end

binding.pry 