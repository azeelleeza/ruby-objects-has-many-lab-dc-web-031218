class Artist
attr_accessor :name, :songs
@@song_count = 0

def initialize(name)
  @name = name
  @songs = []
end

def add_song(song)
  song.artist = self
  @@song_count += 1
  @songs << song
end

def add_song_by_name(title)
  song = Song.new(title)
  song.title = title
  song.artist = self
  @@song_count += 1
  @songs << song

end

def self.song_count
  @@song_count
end



end
