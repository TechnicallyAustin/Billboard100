require_relative '../Billboard100/billboard100.rb'

class Billboard100::Song 
@@all = []
attr_accessor :artist, :name, :peak_rank, :peakdate, :artist, :year, :rank
def initialize(rank, name, artist, peak, peakdate)
    @rank = rank
    @name = name
    @artist = artist
    @peak = peak
    @peakdate = peakdate
    @@all << self
end

def
    # using each array in @@song_groups, initialize the elements in order as one song.
    @@song_group.each do |i|
        row[0] = self.artist
        binding.pry 
        row[1] #=> Song.new(row[1])
        row[2] #=> Artist.new(row[2])
        row[3] #=> Peak.new(row[3])
        row[4] #=> PeakDate.new(row[4])
        
    end
end




def self.chart_songs
    Billboard100::FinalScrapper.songs
end

def create
    Song.chart_songs.each do |song|
    song = Song.new(song)
    @@all << song 
    end
end
def self.create
    create
end

def self.create_songs
    chart_songs.each do |item|
        item = Song.new(item)
    end
   # binding.pry 
end

def artists
    Billboard100::FinalScrapper.artists
    # use this as an array to assign toinitialization of songs
end

def peak
    Billboard100::FinalScrapper.peaks
end

def rank
    Billboard100::FinalScrapper.ranks
end

def peakdates
    Billboard100::FinalScrapper.peakdates
end

def names
    Billboard100::FinalScrapper.songs
end

def self.all
    @@all 
end

def self.clear_all
    self.all = []
end

# song = Song.new(song)
end
song = Billboard100::Song.new(song)
 binding.pry 

