def to_roman(num)
  result = ""
  result += 'M' * (num / 1000)
  result += 'D' * (num % 1000 / 500)
  result += 'C' * (num % 500 / 100)
  result += 'L' * (num % 100 / 50)
  result += 'X' * (num % 50 / 10)
  result += 'V' * (num % 10 / 5)
  result += 'I' * (num % 5 / 1)
end

puts to_roman(1) == "I"
puts to_roman(3) == "III"
puts to_roman(6) == "VI"
puts to_roman(1654) == "MDCLIIII"


# def to_modern_roman(num)
#   result = ""
#   result += 'M' * (num / 1000)
#   result += 'DM'* (num % 1000 / 900)
#   result += 'D' * (num % 900 / 500)
#   result += 'CD'* (num % 500 / 400)
#   result += 'C' * (num % 400 / 100)
#   result += 'CL'* (num % 100 / 90)
#   result += 'L' * (num % 90 / 50)
#   result += 'XL'* (num % 50 / 40)
#   result += 'X' * (num % 40 / 10)
#   result += 'IX'* (num % 10 / 9)
#   result += 'V' * (num % 10 / 5)
#   result += 'IV'* (num % 5 / 4)
#   result += 'I' * (num % 4 / 1)
# end

def to_modern_roman(num)
  romans = ''
  to_romans = { 'M'  => 1000,
                'DM' => 900,
                'D'  => 500,
                'CD' => 400,
                'C'  => 100,
                'CL' => 90,
                'L'  => 50,
                'XL' => 40,
                'X'  => 10,
                'IX' => 9,
                'V'  => 5,
                'IV' => 4,
                'I'  => 1 
              }

  to_romans.each do |roman, arabic|
    romans += roman * (num / arabic)
    num = num % arabic
  end
  return romans
end


puts "My totally sweet testing script"
puts ""
puts "input | expected | actual"
puts "------|----------|-------"
puts "4     | IV       | #{to_modern_roman(4)}"
puts "9     | IX       | #{to_modern_roman(9)}"
puts "13    | XIII     | #{to_modern_roman(13)}"
puts "1453  | MCDLIII  | #{to_modern_roman(1453)}"
puts "1646  | MDCXLVI  | #{to_modern_roman(1646)}"

# # 0.upto(10) { |i| p to_modern_roman(i)}
