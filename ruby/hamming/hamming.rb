module BookKeeping
  VERSION = 3
end

class Hamming
  def self.compute(strand_a, strand_b)
    if strand_a.length != strand_b.length
      raise ArgumentError, "Both strands must be of equal length"
    end

    hamming_distance = 0
    until strand_a.empty? do
      if strand_a.slice!(0) != strand_b.slice!(0)
        hamming_distance += 1
      end
    end
    hamming_distance
  end
end
