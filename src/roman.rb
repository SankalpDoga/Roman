module Roman
  def self.integer_to_roman(inInteger)
    mapping_hash = {
      1000 => 'M',
      500 => 'D',
      100 => 'C',
      50 => 'L',
      10 => 'X',
      5 => 'V',
      1 => 'I'
    }
    keys = mapping_hash.keys

    return nil if inInteger <= 0 || inInteger >= 4000
    roman_number = ""
    keys.each do |key|
      (inInteger/key).times do
        roman_number += mapping_hash[key]
        inInteger -= key
      end
    end
    return roman_number
  end
end

