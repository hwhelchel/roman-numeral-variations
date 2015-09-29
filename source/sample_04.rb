ROMAN_NUMERALS = {1000 => "M",
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
                     1 => "I"
                  } 

# HACK
 def to_roman(number)
   output = ""
   (number / ROMAN_NUMERALS["M"]).times do 
     output = output + "M"
   end
   number = number % ROMAN_NUMERALS["M"]
   (number / ROMAN_NUMERALS["CM"]).times do 
     output = output + "CM"
   end
   number = number % ROMAN_NUMERALS["CM"]
   (number / ROMAN_NUMERALS["D"]).times do 
     output = output + "D"
   end
   number = number % ROMAN_NUMERALS["D"]  
   (number / ROMAN_NUMERALS["CD"]).times do 
     output = output + "CD"
   end
   number = number % ROMAN_NUMERALS["CD"]
   (number / ROMAN_NUMERALS["C"]).times do 
     output = output + "C"
   end
   number = number % ROMAN_NUMERALS["C"]  
   (number / ROMAN_NUMERALS["XC"]).times do 
     output = output + "XC"
   end
   number = number % ROMAN_NUMERALS["XC"]
   (number / ROMAN_NUMERALS["L"]).times do 
     output = output + "L"
   end
   number = number % ROMAN_NUMERALS["L"]  
   (number / ROMAN_NUMERALS["XL"]).times do 
     output = output + "XL"
   end
   number = number % ROMAN_NUMERALS["XL"]
   (number / ROMAN_NUMERALS["X"]).times do 
     output = output + "X"
   end
   number = number % ROMAN_NUMERALS["X"]
   (number / ROMAN_NUMERALS["IX"]).times do 
     output = output + "IX"
   end
   number = number % ROMAN_NUMERALS["IX"]
   (number / ROMAN_NUMERALS["V"]).times do 
     output = output + "V"
   end
   number = number % ROMAN_NUMERALS["V"]
   (number / ROMAN_NUMERALS["IV"]).times do 
     output = output + "IV"
   end
   number = number % ROMAN_NUMERALS["IV"]
   (number / ROMAN_NUMERALS["I"]).times do 
     output = output + "I"
   end
   number = number % ROMAN_NUMERALS["I"]
   output
 end
 
#Refactored
#def to_roman(number)
#  output = ""
#  ROMAN_NUMERALS.each do |key, value|
#    divided = number / key
#    # puts divided
#    output += value * divided
#    # puts output
#    number -= divided * key
#  end
#  output
#end

# NOT A HACK BUT WE LIKE THE HACK BETTER
# def to_roman(number)
#   thousands = (number / 1000)
#   hundreds = (number % 1000 / 100)
#   tens = (number % 100 / 10)
#   ones = (number % 10 )

# roman_numeral = 'M' * thousands

# if hundreds == 9
#   roman_numeral = roman_numeral + 'CM'
# elsif hundreds == 4
#   roman_numeral = roman_numeral + 'CD'
# end

#   else
#     roman_numeral = roman_numeral + 'D' * (number % 1000 / 500)
#     roman_numeral = roman_numeral + 'C' * (number % 500 / 100)
#   end

#   if tens == 9
#     roman_numeral = roman_numeral + 'XC'
#   elsif tens == 4
#     roman_numeral = roman_numeral + 'XL'
#   else
#     roman_numeral = roman_numeral + 'L' * (number % 100 / 50)
#     roman_numeral = roman_numeral + 'X' * (number % 50 / 10)
#   end

#   if ones == 9
#     roman_numeral = roman_numeral + 'IX'
#   elsif ones == 4
#     roman_numeral = roman_numeral + 'IV'
#   else
#     roman_numeral = roman_numeral + 'V' * (num % 10 / 5)
#     roman_numeral = roman_numeral + 'I' * (num % 5 / 1)
#   end

#   roman_numeral
# end

puts "My totally sweet testing script"
puts ""
puts "input | expected | actual"
puts "------|----------|-------"
puts "4     | IV       | #{to_roman(4)}"
puts "9     | IX       | #{to_roman(9)}"
puts "13    | XIII     | #{to_roman(13)}"
puts "1453  | MCDLIII  | #{to_roman(1453)}"
puts "1646  | MDCXLVI  | #{to_roman(1646)}"
