class Prime
  def self.nth(limit)
    raise ArgumentError if limit.zero?
    prime_count = 0
    num = 0

    until prime_count == limit
      num += 1
      prime_count += 1 if num_is_prime?(num)
    end

    num
  end

  def self.num_is_prime?(num)
    if num <= 1
      false
    elsif num <= 3
      true
    elsif num % 2 == 0 || num % 3 == 0
      false
    else
      int = 5
      while int * int <= num
        if num % int == 0 || num % (int + 2) == 0
          return false
        else
          int += 6
        end
      end
      true
    end
  end
end
