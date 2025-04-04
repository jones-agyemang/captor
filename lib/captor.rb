class Captor
  attr_accessor :readings

  def initialize(readings: [])
    @readings = readings
  end

  def closest_to_zero
    0 if readings.empty?
  end
end
