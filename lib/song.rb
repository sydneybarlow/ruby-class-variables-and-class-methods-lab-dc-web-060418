require 'pry'

class Song

  attr_accessor :name, :artist, :genre

  @@artists = []
  @@genres = []
  @@count = 0

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @@artists << artist
    @genre = genre
    @@genres << genre
    @@count += 1
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    hash = @@genres.group_by {|g| g}
    hash.each do |k,v|
      hash[k] = v.count
    end
  end

  def self.artist_count
    hash = @@artists.group_by {|g| g}
    hash.each do |k,v|
      hash[k] = v.count
    end
  end
end

# bs = Song.new("Black SPace", "T-Swwizzle", "metal")
# binding.pry
