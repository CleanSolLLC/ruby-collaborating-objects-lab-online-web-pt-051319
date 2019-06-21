require 'pry'

class Artist

  attr_accessor :name, :songs

    @@all = []

    def initialize(name)
        @name = name
        @songs = []
    end


    def add_song(song)
      @songs << song
    end


    def save
      @@all << self
    end

    def self.all
      @@all
    end

    def self.find_or_create_by_name(name)
      #@name = name
      self.all.collect do |artist_name|
        artist_name.name == name ? name : name = Artist.new(name)
        binding.pry
      end
      #name
    end

    def print_songs
      @songs.each {|song| puts song.name}
    end
  end
