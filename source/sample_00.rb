def to_roman(num)
  ans = ''  
  thousands = num/1000
  x = (num - (thousands)*1000)
  hundreds = x /100 
  y = (x - (hundreds)*100)
  tens = y/10
  ones = (y - (tens)*10)

  ans += 'M'*thousands

  if hundreds == 9
    ans += 'CM'
  elsif hundreds >= 5
    ans += "D" 
    ans += "C" * (hundreds-5)
  elsif hundreds == 4
    ans += "CD"
  else
    ans += "C" * hundreds
  end

  if tens ==9
    ans += 'XC'
  elsif tens >= 5
    ans += "L" 
    ans += "X" * (tens-5)
  elsif tens == 4
    ans += "XL"
  else
    ans += "X" * tens
  end

  if ones ==9
    ans += 'IX'
  elsif ones >= 5
    ans += "V" 
    ans += "I" * (ones-5)
  elsif ones == 4
    ans += "IV"
  else
    ans += "I" * ones
  end
  ans

end

# Drive code... this should print out trues.

puts to_roman(1) == "I"
puts to_roman(3) == "III"
puts to_roman(6) == "VI"

# TODO: what other cases could you add to ensure your to_roman method is working?