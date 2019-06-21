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
      self.find_by_name(name) || self.create_by_name(name)
    end

    def self.create_by_name(name)
      artist = Artist.new(name)
      artist.save
    end

    def self.find_by_name
      self.all.collect do |artist_name| artist_name.name == name}
        
    def print_songs
      @songs.each {|song| puts song.name}
    end
  end
