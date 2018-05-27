require '../model/geographical_coordinate'
require '../model/point'
require '../service/calculate_distance_two_points'
require '../model/distance'

class CalculateDistanceController

  def execute

    values = File.readlines("../../files/input.file")
    points = []
    values.each do |line|
      array = line.split(' ')
      latitude = GeographicalCoordinate.new array[1], array[2], array[3], array[4]
      longitude = GeographicalCoordinate.new array[5], array[6], array[7], array[8]
      points.push(Point.new latitude, longitude, array[0])
    end

    arrayResult = Array.new
    calculateService = CalculateDistanceTwoPoints.new
    points.each_with_index do |elementFrom, i|
      for j in i+1..points.length - 1
        result = calculateService.execute(elementFrom, points[j])
        arrayResult.push(Distance.new elementFrom.name, points[j].name, result)
      end
    end

    out = File.new "../../files/output.file", 'w'
    arrayResult.each do |element|
      out.puts element.from + ' ' + element.to + ' ' + String(element.value)
    end
    out.close

  end
end

puts CalculateDistanceController.new.execute