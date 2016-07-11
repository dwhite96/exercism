class Sieve
  def initialize(limit)
    @limit = limit
  end

  def primes
    prime_list = (2..@limit).to_a
    prime_list.each do |num|
      prime_list = prime_list - self.multiples(num)
    end
    prime_list
  end

  def multiples(num)
    multiples = []
    new_num = num
    while new_num < @limit
      new_num += num
      multiples << new_num
    end
    multiples
  end
end
