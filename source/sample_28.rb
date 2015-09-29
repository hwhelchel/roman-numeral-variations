def to_roman(num)
  symbols = { 1000 => 'M',
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
  						1 => 'I'
            }
  roman_string = ''
  symbols.each do |arabic, roman| 
  	roman_string = roman_string + (roman * (num / arabic))
  	num = num % arabic
  end
  roman_string
end
 
# Drive code... this should print out trues.
 
puts to_roman(1) == "I"
puts to_roman(3) == "III"
puts to_roman(6) == "VI"