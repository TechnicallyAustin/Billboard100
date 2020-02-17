
class Billboard100::Song 
@@all = []
attr_accessor :name, :peak, :artist, :rank 
def initialize(rank, name, artist, peak)
@rank = rank
@peak = peak
@artist = artist 
@name = name 
@@all << self
end

def self.all
    @@all 
end

end

