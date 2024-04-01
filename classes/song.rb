class Song
    @@plays = 0
    attr_writer :name 
    def initialize(name, artist, duration)
        @name = name
        @artist = artist
        @duration = duration
        @plays = 0
    end

    def play
        @plays += 1
        @@plays += 1
        "This song: #@plays plays. Total #@@plays plays"
    end 

    def to_s
        "Song #{@name}--#{@artist} (#{@duration})"
    end

    def name
        @name
    end

    def artist
        @artist
    end
    def duration
        @duration
    end
    def duration=(newValue)
        @duration = newValue
    end
    def durationInMinutes
        @duration/60.0 
    end
    def durationInMinutes=(value)
        @duration = (value*60).to_i
    end
end



aSong = Song.new('Bicyclops', 'Fleck', 260);
aSong2 = Song.new('Fly me to the moon', 'Frank Sinatra', 260);
puts aSong.artist
puts aSong.name
puts aSong.duration
aSong.duration = 300
puts aSong.duration
aSong.name = "Jolene"
puts aSong.name
puts aSong.durationInMinutes
aSong.durationInMinutes=4.2
puts aSong.duration
puts aSong.play 
puts aSong.play 
puts aSong2.play