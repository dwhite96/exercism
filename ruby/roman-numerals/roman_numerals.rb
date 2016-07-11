module BookKeeping
  VERSION = 2
end

module RomanNumerals
  ONES = {
    '1' => 'I',
    '2' => 'II',
    '3' => 'III',
    '4' => 'IV',
    '5' => 'V',
    '6' => 'VI',
    '7' => 'VII',
    '8' => 'VIII',
    '9' => 'IX'
  }

  TENS = {
    # *10
    '1' => 'X',
    '2' => 'XX',
    '3' => 'XXX',
    '4' => 'XL',
    '5' => 'L',
    '6' => 'LX',
    '7' => 'LXX',
    '8' => 'LXXX',
    '9' => 'XC'
  }

  HUNDREDS = {
    # *100
    '1' => 'C',
    '2' => 'CC',
    '3' => 'CCC',
    '4' => 'CD',
    '5' => 'D',
    '6' => 'DC',
    '7' => 'DCC',
    '8' => 'DCCC',
    '9' => 'CM'
  }

  THOUSANDS = {
    # *1000
    '1' => 'M',
    '2' => 'MM',
    '3' => 'MMM'
  }

  refine Integer do
    def to_roman
      digits = self.to_s.chars
      digit_place = digits.count

      digits.map! do |num|
        if digit_place == 4
          digit_place -= 1
          THOUSANDS[num]
        elsif digit_place == 3
          digit_place -= 1
          HUNDREDS[num]
        elsif digit_place == 2
          digit_place -= 1
          TENS[num]
        elsif digit_place == 1
          ONES[num]
        end
      end

      digits.join
    end
  end
end
