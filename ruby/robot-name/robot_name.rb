module BookKeeping
  VERSION = 2
end

class Robot
  LETTERS = [*('A'..'Z')] * 2

  def initialize
    new_name
  end

  def reset
    new_name
  end

  def name
    @name
  end

  private

  def new_name
    @name = shuffle(LETTERS)[0, 2].join + rand(999).to_s.rjust(3, "0")
  end

  def shuffle(list)
    n = list.length

    (n - 1).downto(0) do |i|
      j = rand(i)
      list[j], list[i] = list[i], list[j]
    end

    list
  end
end

# Example usage:
#   ruby robot_name.rb 10 | ruby histogram.rb
if __FILE__ == $PROGRAM_NAME
  sample_count = ARGV[0].to_i

  sample_count.times do
    puts Robot.new.name
  end
end
