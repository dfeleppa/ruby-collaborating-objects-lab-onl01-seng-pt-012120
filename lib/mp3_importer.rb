class MP3Importer
  attr_reader :path
  
  def initialize(file_path)
    @path = file_path
  end
  
  def files
<<<<<<< HEAD
    Dir.entries(self.path).select {|file| file.end_with?(".mp3")}
=======
    Dir.entries(self.path).select {|file| file.ends_with?(".mp3")}
>>>>>>> 3fe509c910ae3ac8a913169a8a3e820bbb35f46c
  end
  
  def import 
    self.files.each do |file|
      Song.new_by_filename(file)
    end
  end
end