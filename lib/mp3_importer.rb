require 'pry'

class MP3Importer

  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    Dir.entries(path).select{|filenames| filenames.end_with?('.mp3')}
    binding.pry
  end

  def import
    Song.new_by_filename(some_filename)
  end

end
