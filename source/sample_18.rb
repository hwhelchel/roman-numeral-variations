def to_roman(num)
  m = num / 1000
  num -= m * 1000 
  d = num / 500
  num -= d * 500 
  c = num / 100
  num -= c * 100
  l = num / 50
  num -= l * 50
  x = num / 10
  num -= x * 10
  v = num / 5
  num -= v * 5
  i = num / 1
  ('M'*m) + ('D'*d) + ('C'*c) + 
  ('L'*l) + ('X'*x) + ('V'*v) + ('I'*i) 
end
 
# Drive code... this should print out trues.
 
puts to_roman(1) 
puts to_roman(3) 
puts to_roman(6) 
puts to_roman(101) 
puts to_roman(1000) 
puts to_roman(2506) 