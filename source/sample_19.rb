require 'minitest/spec'
require 'minitest/autorun'

describe Integer do
  describe "#to_roman" do
    it "should convert 1 to I" do
      1.to_roman.must_equal "I"
    end
  end

  it "should convert 3 to III" do
    3.to_roman.must_equal "III"
  end

  it "should convert 6 to VI" do
    6.to_roman.must_equal "VI"
  end

  it "should convert 9 to IX" do
    9.to_roman.must_equal "IX"
  end

  it "should convert 20 to XX" do
    20.to_roman.must_equal "XX"
  end

  it "should convert 1646 to MDCXLVI" do
    1646.to_roman.must_equal "MDCXLVI"
  end
end

class Integer
  @@numerals = {1000 => "M", 900 => "CM", 500 => "D", 400 => "CD", 100 => "C", 90 => "XC", 50 => "L", 40 => "XL", 10 => "X", 9 => 'IX', 5 => "V", 4 => "IV", 1 => "I"}

  def to_roman
    output = ""
    num_to_convert = self
    @@numerals.each do |number,numeral| 
      output << numeral * (num_to_convert/number)
      num_to_convert %= number 
    end
    output
  end
end