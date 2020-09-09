class Luhn

  def self.valid?(number)
    new(number).valid?
  end

  def initialize(input)
    @input = input.delete(' ')
  end

  def valid?
    return false if @input =~ /\D/ || @input.length < 2
    checksum % 10 == 0
  end

  def digits
    @input.chars.reverse.map &:to_i
  end

  def checksum
    digits.map.with_index do |digit, index|
      if index.even?
        digit
      else
        double = digit * 2
        double > 9 ? double - 9 : double
      end
    end.sum
  end

end
