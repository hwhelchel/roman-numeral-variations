def to_roman(integer)
  string = ''

  string = string + "M" * (integer / 1000)
  integer = integer % 1000
  string = string + "CM" * (integer / 900)
  integer = integer % 900
  string = string + "D" * (integer / 500)
  integer = integer % 500
  string = string + "CD" * (integer / 400)
  integer = integer % 400
  string = string + "C" * (integer / 100)
  integer = integer % 100
  string = string + "XC" * (integer / 90)
  integer = integer % 90
  string = string + "L" * (integer / 50)
  integer = integer % 50
  string = string + "XL" * (integer / 40)
  integer = integer % 40
  string = string + "X" * (integer / 10)
  integer = integer % 10
  string = string + "IX" * (integer / 9)
  integer = integer % 9
  string = string + "V" * (integer / 5)
  integer = integer % 5
  string = string + "IV" * (integer / 4)
  integer = integer % 4
  string = string + "I" * (integer / 1)
end

# Drive code... this should print out trues.

puts to_roman(4) == "IV"
puts to_roman(9) == "IX"
puts to_roman(13) == "XIII"
puts to_roman(1453) == "MCDLIII"
puts to_roman(1646) == "MDCXLVI"

# TODO: what other cases could you add to ensure your to_roman method is working?