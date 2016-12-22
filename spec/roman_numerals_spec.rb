require 'roman_numerals'
  describe Numerator do

    it "returns 1 - 10 in roman numerals correctly" do
      number = Numerator.new
      value = 1
      expect(number.numerator(value)).to eql "I"
    end

    it "returns 1 - 10 in roman numerals correctly" do
      number = Numerator.new
      value = 2
      expect(number.numerator(value)).to eql "II"
    end

    it "returns 10 - 99 in roman numerals correctly" do
      number = Numerator.new
      value = 40
      expect(number.numerator(value)).to eql "XL"
    end

    it "returns 100 - 999 in roman numerals correctly" do
      number = Numerator.new
      value = 339
      expect(number.numerator(value)).to eql "CCCXXXIX"
    end

    it "returns 100 - 999 in roman numerals correctly" do
      number = Numerator.new
      value = 405
      expect(number.numerator(value)).to eql "CDV"
    end

    it "returns 1000 - 5000 in roman numerals correctly" do
      number = Numerator.new
      value = 1056
      expect(number.numerator(value)).to eql "MLVI"
    end

  end
