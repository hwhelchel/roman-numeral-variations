def to_roman(number)
  roman = ''
  
  mapping = {
    :M => 1000,
    :CM => 900,
    :D => 500,
    :MD => 400,
    :C => 100,
    :XC => 90,
    :L => 50,
    :XL => 40,
    :X => 10,
    :IX => 9,
    :V => 5,
    :IV => 4,
    :I => 1,
  }
  while number > 0
    mapping.each do |key, value|
      while number >= value
        if number >= value
          roman += key.to_s
          number -= value
        end
      end
    end
  end
  roman
end

puts to_roman(1) 
puts to_roman(3) 
puts to_roman(6) 
puts to_roman(101) 
puts to_roman(1000) 
puts to_roman(2506) 

puts to_roman(9) 
puts to_roman(150)
puts to_roman(88)