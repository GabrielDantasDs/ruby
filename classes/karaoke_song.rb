require './song'

class KaraokeSong < Song
    def initialize(name, artist, duration, lyrics)
        super(name, artist, duration)
        @lyrics = lyrics
    end
end

aSong = KaraokeSong.new("My Way", "Sinatra", 255, "And now, the ...")
puts aSong.to_s