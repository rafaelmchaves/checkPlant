class CalculateNoodiesTime

  def calculate(noodieTime, hourGlass1, hourGlass2)

    totalTime = 0
    auxHourGlass1 = hourGlass1
    auxHourGlass2 = hourGlass2

    difference = 1
    while(difference != 0 || difference == noodieTime)
      if(auxHourGlass1 > auxHourGlass2)
        difference = auxHourGlass1 - auxHourGlass2
        totalTime += auxHourGlass2
        auxHourGlass1 = difference
        auxHourGlass2 = hourGlass2
      else
        difference = auxHourGlass2 - auxHourGlass1
        totalTime += auxHourGlass1
        auxHourGlass2 = difference
        auxHourGlass1 = hourGlass1
      end

      if (difference == noodieTime)
        totalTime += noodieTime
        return totalTime
      end
    end
    return 0
  end

end

calculateNoodiesTime = CalculateNoodiesTime.new
puts calculateNoodiesTime.calculate(3, 7,12)

