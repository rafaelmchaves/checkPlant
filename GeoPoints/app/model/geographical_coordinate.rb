class GeographicalCoordinate
  attr_accessor :degree, :minute, :second, :direction

  def initialize(degree, minute, second, direction)
    self.degree = degree
    self.minute = minute
    self.second = second
    self.direction = direction
  end
end