module BookKeeping
  VERSION = 4
end

class Complement
  def self.of_dna(strand)
    strand.gsub!(/[A-Z]/) do |n|
      case n
        when 'G'
          'C'
        when 'C'
          'G'
        when 'T'
          'A'
        when 'A'
          'U'
        else
          return strand = ''
      end
    end
  end
end
