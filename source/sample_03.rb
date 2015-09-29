def to_roman_old(num)
  
  rom = "" if rom == nil

  until num == 0 do 
    if num >= 1000
  		rom = "M"*(num/1000)
  		num = num % 1000
  	elsif num >= 500
  		rom = rom + "D"*(num/500)
  		num = num % 500
  	elsif num >= 100
  		rom = rom + "C"*(num/100)
  		num = num % 100
  	elsif num >= 50
  		rom = rom + "L"*(num/50)
  		num = num % 50
 	elsif num >= 10
  		rom = rom + "X"*(num/10)
  		num = num % 10
  	elsif num >= 5
  		rom = rom + "V"*(num/5)
  		num = num % 5
  	elsif num >= 1
  		rom = rom + "I"*num
  		num = num % 1
  	else
  		puts "That number is outside the range of this method.  Try again."
  	end
  end

return rom

end
 
def to_roman_new(num)
  
  rom = "" if rom == nil

  until num == 0 do 
  	if num >= 1000
  		rom = "M"*(num/1000)
  		num = num % 1000
  	elsif num >= 500
  		rom = rom + "D"*(num/500)
  		num = num % 500
  	elsif num >= 100
  		if num/100 == 9
  			rom = rom + "CM"
  		elsif num/100 == 4
  			rom = rom + "CD"
  		else
  			rom = rom + "C"*(num/100)
  		end
  		num = num % 100
  	elsif num >= 50
  		rom = rom + "L"*(num/50)
  		num = num % 50
 	elsif num >= 10
 		if num/10 == 9
 			rom = rom + "XC"
 		elsif num/10 == 4
 			rom = rom + "XL"
 		else
  			rom = rom + "X"*(num/10)
  		end
  		num = num % 10
  	elsif num >= 5
  		if num == 9
  			rom = rom + "IX"
  			num = num - 9
  		else
  			rom = rom + "V"*(num/5)
  			num = num % 5
  		end
  	elsif num >= 1
  		if num == 4
  			rom = rom + "IV"
  		else
  			rom = rom + "I"*num
  		end
  		num = num % 1
  	else
  		puts "That number is outside the range of this method.  Try again."
  	end
  end

return rom

end 

puts "My totally sweet testing script"
puts ""
puts "input | expected | actual"
puts "------|----------|-------"
puts "4     | IV       | #{to_roman_new(4)}"
puts "9     | IX       | #{to_roman_new(9)}"
puts "13    | XIII     | #{to_roman_new(13)}"
puts "1453  | MCDLIII  | #{to_roman_new(1453)}"
puts "1646  | MDCXLVI  | #{to_roman_new(1646)}"
 
# TODO: what other cases could you add to ensure your to_roman method is working?