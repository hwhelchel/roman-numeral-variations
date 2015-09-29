def to_roman(num)
  roman_table = {1000 => "M", 900 => "CM", 500 => "D", 400 => "CD", 
		100 => "C", 90 => "XC", 50 => "L", 10 => "X",
		9 => "IX", 5 => "V", 4 => "IV", 1 => "I" }
	string = ""
	roman_table.each do |key, value|
		div_rem = num.divmod(key)
		num_div_by = div_rem[0]
		num_div_by.times do
			string << value
		end
		num = div_rem[1]
	end
	string
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