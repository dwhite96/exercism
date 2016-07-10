module BookKeeping
  VERSION = 2
end

class Pangram
  ALPHABET = ('a'..'z').to_a
  def self.is_pangram?(str)
    ALPHABET & str.downcase.chars == ALPHABET
  end
end
