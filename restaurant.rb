
class Restaurant
  
  @@filepath = nil
  def self.filepath=(path=nil)
    @@filepath = File.join(APP_ROOT, path)
  end
  
  def self.file_exists?
    # class should know if the restaurant file exists
    if @@filepath && File.exists?(@@filepath)
      return true
    else
      return false
    end # this should be indented
  end # this should be indented
  
  def self.file_usable?
    # create the restaurant file
    return false unless @@filepath
    return false unless File.exists?(@@filepath)
    return false unless File.readable?(@@filepath)
    return false unless File.writable?(@@filepath)
    return true
  end
  
  def self.create_file
    # create the restaurant file
    File.open(@@filepath, 'w') unless file_exists?
    return file_usable?
  end
  
  def self.saved_restaurants
    # read the restaurant file
    # return instances of restaurant
  end
  
end
  
