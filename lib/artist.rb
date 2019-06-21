require 'pry'

class Artist

  attr_accessor :name, :songs

  @@all = []
  @songs = []

    def initialize(name)
        @name = name
    end


    def add_song(song)
      binding.pry
      @songs << song.name
    end


    def save
      @@all << self
    end

    def self.all
      @@all
    end

    def self.find_or_create_by_name(name)
      @name = name
      @@all.collect do |artist_name|
        artist_name.name == name ? name : name = Artist.new(name)
      end
      name
    end

    def print_songs
      @songs.each {|song| puts song.name}
    end
  end
