def to_roman(number)
  roman_numeral = ""

  conversions = {
    1000 => "M",
    900 => "CM",
    500 => "D",
    400 => "CD",
    100 => "C",
    90 => "XC",
    50 => "L",
    40 => "XL",
    10 => "X",
    9 => "IX",
    5 => "V",
    4 => "IV",
    1 => "I",
  }

  while number > 0
    conversions.each do |arabic, roman|
      if number >= arabic
        roman_numeral << roman
        number -= arabic
      end
    end
  end

  roman_numeral
end

# This is my old roman numeral method!!!

# def to_roman(number)
#   roman_numeral = ""

#   roman_numeral << "M" * (number/1000)
#   number = number % 1000

#   roman_numeral << "D" * (number/500)
#   number = number % 500

#   roman_numeral << "C" * (number/100)
#   number = number % 100

#   roman_numeral << "L" * (number/50)
#   number = number % 50
  
#   roman_numeral << "X" * (number/10)
#   number = number % 10

#   roman_numeral << "V" * (number/5)
#   number = number % 5

#   roman_numeral << "I" * (number/1)
#   number = number % 1

#   roman_numeral
# end

# Drive code... this should print out trues.

puts to_roman(1) == "I"
puts to_roman(3) == "III"
puts to_roman(6) == "VI"

# TODO: what other cases could you add to ensure your to_roman method is working?