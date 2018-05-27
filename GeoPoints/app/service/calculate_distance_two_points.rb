require '../../app/service/calculate_geographical_coordinate'

class CalculateDistanceTwoPoints

    #lat1,lon1,lat2,lon2
  def execute(pointFrom, pointTo)

    calculateGeographicalCoordinate = CalculateGeographicalCoordinate.new
    points = calculateGeographicalCoordinate.transformInAbsoluteDegree pointFrom, pointTo

    resultPoint = calculateGeographicalCoordinate.execute points, pointFrom, pointTo
    distanceLatitude = degreeToRadius(resultPoint.latitude)
    distanceLongitude = degreeToRadius(resultPoint.longitude)

    a =  Math.sin(distanceLatitude/2) * Math.sin(distanceLatitude/2) +
                Math.cos(degreeToRadius(points.latitudeFrom)) * Math.cos(degreeToRadius(points.latitudeTo)) *
                    Math.sin(distanceLongitude/2) * Math.sin(distanceLongitude/2)

    c = 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1-a))

    earthRadius= 6371; # Radius of the earth in km
    earthRadius * c
  end

  def degreeToRadius(degree)
    return degree * (Math::PI/180)
  end

end