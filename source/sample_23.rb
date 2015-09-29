#Oldschool Roman

def to_roman(num)

  thousand = latin_number.divmod(1000)

  fivehundreds = thousand[1].divmod(500)

  hundreds = fivehundreds[1].divmod(100)

  fifties = hundreds[1].divmod(50)

  tenth = fifties[1].divmod(10)

  fives = tenth[1].divmod(5)
 
  arabic_numbers = 'M'*thousand[0] + 'D'*fivehundreds[0] + 'C'*hundreds[0] + 'L'*fifties[0] + 'X'*tenth[0] + 'V'*fives[0] + 'I'*fives[1]
 
  puts arabic_numbers
  
end


Newschool Roman

def to_roman(latin_number)

  thousand = latin_number.divmod(1000)

  ninehundreds = thousand[1].divmod(900)

  fivehundreds = ninehundreds[1].divmod(500)

  fourhundreds = fivehundreds[1].divmod(400)

  hundreds = fourhundreds[1].divmod(100)

  ninties = hundreds[1].divmod(90)

  fifties = ninties[1].divmod(50)

  fourties = fifties[1].divmod(40)

  tenth = fourties[1].divmod(10)

  nines = tenth[1].divmod(9)

  fives = nines[1].divmod(5)

  fours = fives[1].divmod(4)
 
  arabic_numbers = 'M'*thousand[0] + 'CM'*ninehundreds[0] + 'D'*fivehundreds[0] + 'CD'*fourhundreds[0] + 'C'*hundreds[0] + 'XC'*ninties[0] + 'L'*fifties[0] + 'XL'*fourties[0] + 'X'*tenth[0] + 'IX'*nines[0] + 'V'*fives[0] + 'IV'*fours[0] + 'I'*fours[1]
 
  puts arabic_numbers

end