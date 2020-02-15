require_relative  './billboard100'

class Song 
@@all = []
attr_accessor :artist
attr_reader :name, :peak_rank, :peakdate, :artist, :year, :rank
def initialize(name)
    # self.song_groups
    # @@all << self
end

def self.chart_songs
    FinalScrapper.songs
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



# def song_groups
#     FinalScrapper.song_groups
# end

def self.all
    @@all 
end

def self.clear_all
    self.all = []
end


def artist=(artist)
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

# song = Song.new(song)

song = Song.new(song)
 binding.pry 
end 
