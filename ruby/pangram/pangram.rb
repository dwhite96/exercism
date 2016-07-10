module BookKeeping
  VERSION = 2
end

class Pangram
  def self.is_pangram?(str)
    alphabet = "abcdefghijklmnopqrstuvwxyz"
    count = 0
    alphabet.each_char { |char| count += 1 if str.downcase.include? char }
    count >= 26
  end
end
