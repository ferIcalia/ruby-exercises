# You can modify this class however you like to make it pass the test suite.
class ChangeMachine
  attr_reader :remaining

  def initialize; end

  def cost(cents)
    @cost = cents
  end

  def paid(cents)
    @paid = cents
  end

  def dispense_change
    response = ''

    change_calculator.each do |coin|
      coin_type, times_per_coin = coin

      if coin_type == :quarter
        response += quarter * times_per_coin
      elsif coin_type == :dime
        response += dime * times_per_coin
      elsif coin_type == :nickel
        response += nickel * times_per_coin
      elsif coin_type == :penny
        response += penny * times_per_coin
      end
    end
    response = response == '' ? 'do not have to dispense change' : response
  end

  def change_calculator
    coins = { quarter: 25, dime: 10, nickel: 5, penny: 1 }.freeze

    times_per_coin = { quarter: 0, dime: 0, nickel: 0, penny: 0 }

    return times_per_coin if @cost > @paid

    @remaining = (@paid - @cost) < 101 ? (@paid - @cost) : 100 - ((@cost - @paid) % 100)

    until @remaining.zero?
      if (@remaining - coins[:quarter]).positive? || (@remaining - coins[:quarter]).zero?
        times_per_coin[:quarter] += 1
        @remaining -= coins[:quarter]
      elsif (@remaining - coins[:dime]).positive? || (@remaining - coins[:dime]).zero?
        times_per_coin[:dime] += 1
        @remaining -= coins[:dime]
      elsif (@remaining - coins[:nickel]).positive? || (@remaining - coins[:nickel]).zero?
        times_per_coin[:nickel] += 1
        @remaining -= coins[:nickel]
      elsif (@remaining - coins[:penny]).positive? || (@remaining - coins[:penny]).zero?
        times_per_coin[:penny] += 1
        @remaining -= coins[:penny]
      end
    end

    times_per_coin
  end

  # You don't have to modify anything under this line

  def quarter
    'Dispensed quarter'
  end

  def dime
    'Dispensed dime'
  end

  def nickel
    'Dispensed nickel'
  end

  def penny
    'Dispensed penny'
  end
end
