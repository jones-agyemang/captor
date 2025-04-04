class Captor
  attr_accessor :readings

  def initialize(readings: [])
    @readings = readings
  end

  def closest_to_zero
    return 0 if readings.empty?

    readings.reduce do |previous_temp, current_temp|
      return previous_temp.abs if previous_temp.abs == current_temp.abs

      previous_temp.abs < current_temp.abs ? previous_temp : current_temp
    end
  end
end
