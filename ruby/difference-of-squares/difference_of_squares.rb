module BookKeeping
  VERSION = 3
end

class Squares
  def initialize value
    @value = 1..value
  end

  def square_of_sum
    @value.reduce(0, :+) ** 2
  end

  def sum_of_squares
    @value.map{ |n| n ** 2 }.reduce(0, :+)
  end

  def difference
    square_of_sum - sum_of_squares
  end
end
