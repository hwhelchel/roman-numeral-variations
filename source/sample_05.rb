def to_roman(num)

roman_string = ''

roman = {1000 => "M",
         900 => "CM",
         500 => "D",
         400 => "CD",
         100 => "C",
         90  => "XC",
         50  => "L",
         40  => "XL",
         10  => "X",
         9   => "IX",
         5   => "V",
         4   => "IV",
         1   => "I"
       }

roman.each do |k,v|
  roman_string << v*(num/k)
  num = num % k
end

roman_string
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

puts "14: #{to_roman(14)}"
puts "44: #{to_roman(44)}"
puts "94: #{to_roman(94)}"

