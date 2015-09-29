#Assumed rules for subtratcive case:
#I is allowed before V or X
#X before L or C
#C before D or M
def to_roman(num)
  roman_sym=["M","CM","D","CD","C","XC","L","XL","X","IX","V","IV","I"]
  roman_val=[1000,900,500,400,100,90,50,40,10,9,5,4,1]
  roman = ""
  roman_sym.each_index do |i|
    roman += roman_sym[i] * (num/roman_val[i])
    num = num%roman_val[i]
  end
  return roman
end

puts to_roman(1) == "I"
puts to_roman(3) == "III"
puts to_roman(6) == "VI"
puts to_roman(4) == "IV"
puts to_roman(9) == "IX"
puts to_roman(13) == "XIII"
puts to_roman(1453) == "MCDLIII"
puts to_roman(1646) == "MDCXLVI"
