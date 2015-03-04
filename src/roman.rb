module Roman
  def self.integer_to_roman(inInteger)

    roman_values = Array[ 'I', 'V', 'X', 'L', 'C', 'D', 'M']
    ndigits = inInteger.to_s.size

    i = (ndigits - 1)*2
    roman_number = ''
    inInteger.to_s.chars.map(&:to_i).each do |digit|
      case digit
      when 1..3
        digit.times do
          roman_number += roman_values[i]
        end
      when 4
        roman_number += roman_values[i]
        roman_number += roman_values[i+1]
      when 5
        roman_number += roman_values[i+1]
      when 6..8
        roman_number += roman_values[i+1]
        (digit-5).times do
          roman_number += roman_values[i]
        end
      when 9
        roman_number += roman_values[i]
        roman_number += roman_values[i+2]
      end
      i -= 2
    end
    return roman_number
  end
end
