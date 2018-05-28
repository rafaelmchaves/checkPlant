require 'test/unit'
require 'test/unit/ui/console/testrunner'

class MyTest < Test::Unit::TestCase

  def test_miojo
    result = CalculateNoodiesTime.new.calculate(3, 5,7)
    assert(result, 10)
  end
end