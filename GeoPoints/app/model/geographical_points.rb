class GeographicalPoints
  attr_accessor :latitudeFrom, :longitudeFrom, :latitudeTo, :longitudeTo

  def initialize(latitudeFrom, longitudeFrom, latitudeTo, longitudeTo)
    self.latitudeFrom = latitudeFrom
    self.longitudeFrom = longitudeFrom
    self.latitudeTo = latitudeTo
    self.longitudeTo = longitudeTo
  end
end