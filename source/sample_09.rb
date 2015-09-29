# Brantley and Carter
def to_roman(num) 
  num_of_m = num / 1000
  num %= 1000

  num_of_d = num / 500
  num %= 500

  num_of_c = num / 100
  num %= 100

  num_of_l = num / 50
  num %= 50

  num_of_x = num  / 10
  num %= 10

  num_of_v = num / 5
  num %= 5

  num_of_i = num / 1
  num %= 1

  roman_result = "M"*num_of_m + "D"*num_of_d + "C"*num_of_c + "L"*num_of_l + "X"*num_of_x + "V"*num_of_v + "I"*num_of_i
end
# Drive code... this should print out trues.

puts to_roman(1) == "I"
puts to_roman(3) == "III"
puts to_roman(6) == "VI"

# TODO: what other cases could you add to ensure your to_roman method is working?