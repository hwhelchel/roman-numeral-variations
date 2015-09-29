#nice and refactored. Using a hash instead of repetition.
def to_roman(num)

  roman_num = ""

  roman_letters = { "M" => 1000,
                    "CM" => 900,
                    "D" => 500,
                    "CD" => 400,
                    "C" => 100,
                    "XC" => 90,
                    "L" => 50,
                    "XL" => 40,
                    "X" => 10,
                    "IX" => 9,
                    "V" => 5,
                    "IV" => 4,
                    "I" => 1 }

  roman_letters.each do |roman, arabic| 
    roman_num += roman * (num / arabic)
    num = num % arabic
  end

  roman_num
end
 
# Drive code... this should print out trues.
 
puts to_roman(1) == "I"
puts to_roman(3) == "III"
puts to_roman(6) == "VI"
puts to_roman(34) == "XXXIV"
puts to_roman(49) == "XLIX"
puts to_roman(452) == "CDLII"
 
# TODO: what other cases could you add to ensure your to_roman method is working?

puts "My totally sweet testing script"
puts ""
puts "input | expected | actual"
puts "------|----------|-------"
puts "4     | IV       | #{to_roman(4)}"
puts "9     | IX       | #{to_roman(9)}"
puts "13    | XIII     | #{to_roman(13)}"
puts "34    | XXXIV    | #{to_roman(34)}"
puts "1453  | MCDLIII  | #{to_roman(1453)}"
puts "1646  | MDCXLVI  | #{to_roman(1646)}"