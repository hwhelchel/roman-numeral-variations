def to_roman(num)
  rm = {  1 => "I",
          4 => "IV",
          5 => "V",
          9 => "IX",
          10 => "X",
          40 => "XL",
          50 => "L",
          90 => "XC",
          100 => "C",
          400 => "CD",
          500 => "D",
          900 => "CM",
          1_000 => "M" }

  numbers = [1_000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1]

  roman_numerable = ""

  numbers.each do |number|
    roman_numerable += rm[number] * (num / number)
    num %= number
  end
  roman_numerable
end
 

puts to_roman(1) == "I"
puts to_roman(3) == "III"
puts to_roman(4) == "IV"
puts to_roman(6) == "VI"