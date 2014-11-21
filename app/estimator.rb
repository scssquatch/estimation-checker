class Estimator
  POINTS_PER_DAY = 4
  HOURS_PER_DAY = 8

  def self.actual(start_time, end_time)
    # convert to hours
    hours = ((end_time - start_time) / 1.hour.in_seconds).round
    binding.pry
    (hours / HOURS_PER_DAY) * POINTS_PER_DAY
  end
end
