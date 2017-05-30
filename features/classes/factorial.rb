class Factorial

  def self.calculate(number)
    fact = 1
    return 1 if number == 1
    raise ArgumentError, 'Factorial can be calculated for only numbers greater than 0' if (!number.to_s.match(/^[-+]?[\d]+$/) || number < 1)
    return number * Factorial.calculate(number - 1)
  end

end