module BookKeeping
  VERSION = 2
end

class Year
  def self.leap?(year)
    case
    when year.modulo(400).zero? then true
    when year.modulo(100).zero? then false
    else year.modulo(4).zero?
    end
  end
end
