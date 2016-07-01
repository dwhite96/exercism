module BookKeeping
  VERSION = 3
end

class Hamming
  def self.compute(strand_a, strand_b)
    if strand_a.length != strand_b.length
      raise ArgumentError, "Both strands must be of equal length"
    end

    strand_a.length.times.count { |i| strand_a[i] != strand_b[i] }
  end
end
