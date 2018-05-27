class Distance
  attr_accessor :from, :to, :value

  def initialize(from, to, value)
    self.from = from
    self.to = to
    self.value = value
  end
end