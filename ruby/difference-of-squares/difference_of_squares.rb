module BookKeeping
  VERSION = 3
end

class Squares
  def initialize(value)
    @value = value
  end

  def square_of_sum
    sum { |i| i } ** 2
  end

  def sum_of_squares
    sum { |i| i ** 2 }
  end

  def difference
    square_of_sum - sum_of_squares
  end

  private

  def sum(&block)
    sum = 0
    for i in 1..@value
      sum += block.call(i)
    end
    sum
  end
end
