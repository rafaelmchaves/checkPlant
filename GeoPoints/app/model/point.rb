class Point

   attr_accessor :latitude, :longitude, :name

  def initialize(latitude, longitude, name)
     self.latitude = latitude
     self.longitude = longitude
     self.name = name
  end

end