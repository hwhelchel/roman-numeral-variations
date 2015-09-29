def to_roman(num)
  
  output_string = ""
  
  roman_numeral_dict = {1000 => 'M', 
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
                        1 => 'I'}
  
    roman_numeral_dict.sort.reverse.each do |english, roman|
      number_of_romans = num/english
      output_string = output_string + (roman*number_of_romans)
      num = num % english
    end
    
  output_string
end

puts "My totally sweet testing script"
puts ""
puts "input | expected | actual"
puts "------|----------|-------"
puts "4     | IV       | #{to_roman(4)}"
puts "9     | IX       | #{to_roman(9)}"
puts "13    | XIII     | #{to_roman(13)}"
puts "1453  | MCDLIII  | #{to_roman(1453)}"
puts "1646  | MDCXLVI  | #{to_roman(1646)}"
puts "check"
