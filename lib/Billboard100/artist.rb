require_relative '../Billboard100/billboard100.rb'



class Billboard100::Artist 
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


def self.chart_artists
    Billboard100::FinalScrapper.artists
    #binding.pry 
end

def self.create
    Billboard100::Artist.chart_artists.each do |artist|
    artist = Billboard100::Artist.new(artist)
    end
end

def self.all
    @@all
end

end
# Initializes each artist name from the BB100 as an artist object.
Billboard100::Artist.create 

binding.pry 