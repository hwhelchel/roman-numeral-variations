def to_roman(num)
  roman_to_arabic = { 
                      1000 => 'M',
                      500 => 'D',
                      100 => 'C',
                      50 => 'L',
                      10 => 'X',
                      5 => 'V',
                      1 => 'I'
                    }
  roman_array = []                  
  roman_to_arabic.each do |k, v|
    roman_array << roman_to_arabic[k] * (num / k)
    num = num - ((num / k) * k)
  end
  roman_array
end

#MODERN############################


def to_roman_modern(num)
  roman_to_arabic = { 
                      1000 => 'M',
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
                      4 => 'M',
                      1 => 'I'
                    }
  roman_array = []                  
  roman_to_arabic.each do |k, v|
    roman_array << roman_to_arabic[k] * (num / k)
    num = num - ((num / k) * k)
  end
  roman_array.join
end

puts to_roman_modern(19)