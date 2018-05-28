class CalculateNoodiesTime

  def calculate(noodlesTime, hourGlass1, hourGlass2)

    totalTime = 0
    auxHourGlass1 = hourGlass1
    auxHourGlass2 = hourGlass2

    difference = nil
    #se for zero é porque não tem solução. Vai reiniciar a mesma contagem.
    while(difference != 0)
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

      if (difference == noodlesTime)
        totalTime += noodlesTime
        return totalTime
      end
    end
    return "Não é possível cozinhar no tempo exato"
  end

end

calculateNoodiesTime = CalculateNoodiesTime.new
puts calculateNoodiesTime.calculate(3, 5,7)
puts calculateNoodiesTime.calculate(3, 4,6)
puts calculateNoodiesTime.calculate(3, 7,12)
puts calculateNoodiesTime.calculate(5, 11,18)

