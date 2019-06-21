require 'pry'

class MP3Importer

  attr_accessor :path

  def files

  end

  def import
    Song.new_by_filename(some_filename)
  end

end
