class Captor
  attr_accessor :readings

  def initialize(readings: [])
    @readings = readings
  end

  def closest_to_zero
    return 0 if readings.empty?

    results = {}
    readings.each do |temp|
      results[temp] = temp.abs
    end

    min_temp = results.values.min

    results.key(min_temp)
  end
end
