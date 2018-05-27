require '../model/point'
require '../model/geographical_coordinate'
require '../../app/model/geographical_points'

class CalculateGeographicalCoordinate

  def execute(points, pointFrom, pointTo)

    latitude = calculateDifference pointFrom.latitude.direction, pointTo.latitude.direction, points.latitudeFrom, points.latitudeTo
    longitude = calculateDifference pointFrom.longitude.direction, pointTo.longitude.direction, points.longitudeFrom, points.longitudeTo

    Point.new latitude, longitude, nil
  end

  def transformInAbsoluteDegree(pointFrom, pointTo)
    pointFromLatitude = calculateAbsoluteDegree pointFrom.latitude
    pointFromLongitude = calculateAbsoluteDegree pointFrom.longitude
    pointToLatitude = calculateAbsoluteDegree pointTo.latitude
    pointToLongitude = calculateAbsoluteDegree pointTo.longitude

    GeographicalPoints.new pointFromLatitude, pointFromLongitude, pointToLatitude, pointToLongitude
  end

  def calculateDifference(directionFrom, directionTo, valueDegreeFrom, valueDegreeTo)
    if directionFrom == directionTo
      difference = valueDegreeFrom - valueDegreeTo
    else
      difference = valueDegreeFrom + valueDegreeTo
    end
  end

  def calculateAbsoluteDegree(coordinate)
    Float(coordinate.degree) + Float(coordinate.minute)/ 60 + Float(coordinate.second)/3600
  end
end

