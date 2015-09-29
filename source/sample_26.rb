# Old Roman Numerals

def to_roman(num)
  array = []
  array << 'M' * (num/1000)
  num %= 1000
  array << 'D' * (num/500)
  num %= 500
  array << 'C' * (num/100)
  num %= 100
  array << 'L' * (num/50)
  num %= 50
  array << 'X' * (num/10)
  num %= 10
  array << 'V' * (num/5)
  num %= 5
  array << 'I' * (num)

  array.join
end

# Drive code... this should print out trues.

puts to_roman(1) == "I"
puts to_roman(3) == "III"
puts to_roman(6) == "VI"




# New Roman Numerals
def to_roman(num)
  roman_hash = {
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
                1 => "I" }
array = []
roman_hash.each do |arabic , roman| 
  array << roman * (num/arabic)
  num %= arabic
end
array.join
end
 
puts to_roman(1969)
puts to_roman(353)
puts to_roman(657)
