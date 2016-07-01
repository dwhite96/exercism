module BookKeeping
  VERSION = 3
end

class Gigasecond
  def self.from(birthdate)
    birthdate + (10**9)
  end
end
