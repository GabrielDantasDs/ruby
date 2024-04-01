require './song'

class SongList
    MaxTime = 5*60

    def SongList.isTooLong(aSong) #aSong é uma instancia de SOng
        return aSong.duration > MaxTime
    end
end

song1 = Song.new("Bicyclops", "Fleck", 260)
puts SongList.isTooLong(song1)
song2 = Song.new("The Calling", "Santana", 468)
puts SongList.isTooLong(song2)