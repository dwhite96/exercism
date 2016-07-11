module BookKeeping
  VERSION = 2
end

module RomanNumerals
  ROMAN_NUMS = {
    1000 => 'M',
    900 => 'CM',
    500 => 'D',
    400 => 'CD',
    100 => 'C',
    90 => 'XC',
    50 => 'L',
    40 => 'XL',
    10 => 'X',
    9 => 'IX',
    5 => 'V',
    4 => 'IV',
    1 => 'I'
  }

  refine Integer do
    def to_roman
      if self == 0
        return ''
      else
        ROMAN_NUMS.each do |key, value|
          return value + (self - key).to_roman if self >= key
        end
      end
    end
  end
end
