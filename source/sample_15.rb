def to_roman(num)

  conversion_table = { 1000 => 'M',
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
                          1 => 'I' }

  roman_num = ''
  conversion_table.each do |arabic, roman| 
    roman_num += roman * (num / arabic)
    num %= arabic
  end
  return roman_num

end

puts "My totally sweet testing script"
puts ""
puts "input | expected | actual"
puts "------|----------|-------"
puts "4     | IV       | #{to_roman(4)}"
puts "9     | IX       | #{to_roman(9)}"
puts "13    | XIII     | #{to_roman(13)}"
puts "1453  | MCDLIII  | #{to_roman(1453)}"
puts "1646  | MDCXLVI  | #{to_roman(1646)}"


# Drive code... this should print out trues.

puts to_roman(1) == "I"
puts to_roman(3) == "III"
puts to_roman(6) == "VI"

# TODO: what other cases could you add to ensure your to_roman method is working?