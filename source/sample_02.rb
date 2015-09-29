def to_roman(number)
  number = number.to_i
  roman_numbers = [
    ['M', 1000],
    ['CM', 900],
    ['D',  500],
    ['CD', 400],
    ['C',  100],
    ['LC', 90],
    ['L',  50],
    ['XL', 40],
    ['X',  10],
    ['IX', 9],
    ['V',  5],
    ['IV', 4],
    ['I',  1]
  ]

  roman_numeral = ''
  roman_numbers.each do |current_number|
    current_number_times = number / current_number[1]
    if current_number_times > 0
      roman_numeral += current_number[0] * current_number_times
    end
    number %= current_number[1]
  end

  roman_numeral
end

puts "input | expected     | actual"
puts "------|--------------|--------------"
puts "4     | IV           | #{to_roman(4)}"
puts "9     | IX           | #{to_roman(9)}"
puts "14    | XIV          | #{to_roman(14)}"
puts "143   | CXLIII       | #{to_roman(143)}"
puts "666   | DCLXVI       | #{to_roman(666)}"
puts "1546  | MDXLVI       | #{to_roman(1546)}"
puts "1646  | MDCXLVI      | #{to_roman(1646)}"
puts "3353  | MMMCCCLIII   | #{to_roman(3353)}"