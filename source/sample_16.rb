def to_roman(num)
  roman = []

	(num/1000).times { roman.push "M" }
	((num%1000) / 500).times { roman.push "D" }
	((num%500) / 100).times { roman.push "C" }
	((num%100) / 50).times { roman.push "L" }
	((num%50) / 10).times { roman.push "X" }
	((num%10) / 5).times { roman.push "V" }
	((num%5) / 1).times { roman.push "I" }

  roman.join
end

# Drive code... this should print out trues.

puts to_roman(1) == "I"
puts to_roman(3) == "III"
puts to_roman(6) == "VI"
puts to_roman(3769)

