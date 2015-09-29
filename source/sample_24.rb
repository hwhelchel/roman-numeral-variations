#old school
def to_roman(num)
  if num <= 3000 && num >= 1
    string = ""
 
    thousands = num / 1000 
      string<<"M" * thousands
      num -= (thousands * 1000)
    five_hundred = num / 500
      string<<"D" * five_hundred
      num -= (five_hundred * 500)
    hundred = num / 100
      string<<"C" * hundred
      num -= (hundred * 100)
    fifty = num / 50
      string<<"L" * fifty
      num -= (fifty * 50)
    ten = num / 10
      string << "X" * ten
      num -= (ten * 10)
    five = num / 5
      string << "V" * five
      num -= (five * 5)
    one = num / 1
      string << "I" * one
      num -= (one * 1)
    puts string
  end
end
 
#modern
def to_roman(num)
  if num <= 3000 && num >= 1
    string = ""
 
    thousands = num / 1000 
      string << "M" * thousands
      num -= (thousands * 1000)
 
    nine_hundred = num / 900 
      string << "CM" * nine_hundred 
      num -= (nine_hundred  * 900)
 
    five_hundred = num / 500
      string << "D" * five_hundred
      num -= (five_hundred * 500)
    
    four_hundred = num / 400
      string << "CD" * four_hundred
      num -= (four_hundred * 400)
 
    hundred = num / 100
      string << "C" * hundred
      num -= (hundred * 100)
    
    ninety = num / 90
      string << "XC" * ninety
      num -= (ninety * 90)
 
    fifty = num / 50
      string << "L" * fifty
      num -= (fifty * 50)
    
    forty = num / 40
      string << "XL" * forty
      num -= (forty * 40)
 
    ten = num / 10
      string << "X" * ten
      num -= (ten * 10)
    
    nine = num / 9
      string << "IX" * nine
      num -= (nine * 9)
 
    five = num / 5
      string << "V" * five
      num -= (five * 5)
 
    four = num / 4
      string << "IV" * four
      num -= (four * 4)  
    
    one = num / 1
      string << "I" * one
      num -= (one * 1)
    puts string
  end
end