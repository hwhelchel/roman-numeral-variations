# Old School
def to_roman(arabic_integer)
  roman_dictionary = {1000 => "M",
                       500 => "D",
                       100 => "C",
                       50  => "L",
                       10  => "X",
                       5   => "V",
                       1   => "I"}
  roman_number = ""

  roman_dictionary.each do |arabic, roman|
    num_times = arabic_integer / arabic
    roman_number   += roman * num_times
    arabic_integer -= num_times * arabic
  end
  roman_number
end

# New School
def to_roman(arabic_integer)
  roman_dictionary = {1000 => "M",
                       900 => "CM",
                       500 => "D",
                       400 => "CD",
                       100 => "C",
                       90  => "XC",
                       50  => "L",
                       40  => "XL",
                       10  => "X",
                       9   => "IX",
                       5   => "V",
                       4   => "IV",
                       1   => "I"}
  roman_number = ""

  roman_dictionary.each do |arabic, roman|
    num_times = arabic_integer / arabic
    roman_number   += roman * num_times
    arabic_integer -= num_times * arabic
  end
  roman_number
end