module BookKeeping
  VERSION = 3
end

class Squares
  def initialize(value)
    @value = value
  end

  def square_of_sum
    self.sum**2
  end

  def sum_of_squares
    square = 0
    for i in 1..@value
      square += i**2
    end
    square
  end

  def difference
    square_of_sum - sum_of_squares
  end

  def sum
    sum = 0
    for i in 1..@value
      sum += i
    end
    sum
  end

  def square
    self**2
  end
end
