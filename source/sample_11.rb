def to_roman(num)
  roman_to_num = { "M"  => 1_000,
                   "CM" => 900,
                   "D"  => 500,
                   "CD" => 400,
                   "C"  => 100,
                   "XC" => 90,
                   "L"  => 50,
                   "XL" => 40,
                   "X"  => 10,
                   "IX" => 9,
                   "V"  => 5,
                   "IV" => 4,
                   "I"  => 1 }
  return "" if num == 0
  roman_to_num.map { |roman, int| return roman + to_roman(num - int) if num >= int }
end

# Drive code... this should print out trues.

puts to_roman(1) == "I"
puts to_roman(3) == "III"
puts to_roman(6) == "VI"

# TODO: what other cases could you add to ensure your to_roman method is working?