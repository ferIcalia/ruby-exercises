class Game
  def self.fizz_buzz(number)
    return 'El parametro debe ser un numero' unless number.is_a? Numeric

    if (number % (3 * 5)).zero?
      'FizzBuzz'
    elsif (number % 3).zero? || number.to_s.include?('3')
      'Fizz'
    elsif (number % 5).zero? || number.to_s.include?('5')
      'Buzz'
    else
      number
    end
  end
end
