def to_roman(num)
  string = ""
  string << "M" * (num / 1000)
  string << "D" * ((num % 1000) / 500)
  string << "C" * ((num % 500) / 100)
  string << "L" * ((num % 100) / 50)
  string << "X" * ((num % 50) / 10)
  string << "V" * ((num % 10) / 5)
  string << "I" * (num % 5)

  string.gsub!("DCCCC", "CM") #900
  string.gsub!("CCCC", "CD") #400
  string.gsub!("LXXXX", "LC") #90
  string.gsub!("XXXX", "XL") #40
  string.gsub!("VIIII", "IX") #9
  string.gsub!("IIII", "IV") #4
end

puts to_roman(1) == "I"
puts to_roman(3) == "III"
puts to_roman(6) == "VI"

# TODO: what other cases could you add to ensure your to_roman method is working?