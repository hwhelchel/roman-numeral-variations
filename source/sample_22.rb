def old_numerals(number)

 
  (number / 1000).times do print "M" end

    five_hundred = number % 1000

    #puts five_hundred
  (five_hundred / 500).times do print "D" end

    one_hundred = five_hundred % 500

    #puts one_hundred
  (one_hundred / 100).times do print "C" end

    fifty = one_hundred % 100

    #puts fifty
  (fifty / 50).times do print "L" end

    ten = fifty % 50

    #puts ten
  (ten / 10).times do print "X" end

    five = ten % 10

    #puts five
  (five / 5).times do print "V" end

    one = five % 5

    #puts one
  if one <= 3

    (one / 1).times do print "I" end

  else
    print "IV"

  end
 
 
end

 
old_numerals(2634)
old_numerals(1) == "I"

old_numerals(3) == "III"

old_numerals(6) == "VI"
 

 
 
def roman_numerals(number)

numeral_output = ""
 

  (number / 1000).times { numeral_output += "M" }

    five_hundred = number % 1000

  
  one_hundred = five_hundred % 500

 
  if five_hundred > 900

    numeral_output += "LD"
  elsif five_hundred < 900 && five_hundred > 400

    (five_hundred / 500).times { numeral_output += "D" } #900 = LD

  end
 
  if one_hundred <= 300

    (one_hundred / 100).times { numeral_output += "C" } #400 = CD

  else
    numeral_output += "CD"

  end
 
  fifty = one_hundred % 100

 
  if fifty < 90

    (fifty / 50).times { numeral_output += "L" } #90 = VL

  else
    numeral_output += "VL"

  end
 
  ten = fifty % 50

 
  if ten <= 30

    (ten / 10).times { numeral_output += "X" } #40 = XL

  else
    numeral_output += "XL"

  end
 
  five = ten % 10

 
  if five < 9

    (five / 5).times do numeral_output += "V" end #9 = IX

  else
    numeral_output += "IX"

    return numeral_output
  end

 
  one = five % 5

 
  if one <= 3
    (one / 1).times do numeral_output += "I" end

  else
    numeral_output += "IV" #4 = IV

  end
  
  return numeral_output

end
 
 

puts roman_numerals(4)
puts roman_numerals(9)

puts roman_numerals(13)

puts roman_numerals(1453)
puts roman_numerals(1646)

 
puts roman_numerals(1) == "I"

puts roman_numerals(3) == "III"

puts roman_numerals(6) == "VI"
