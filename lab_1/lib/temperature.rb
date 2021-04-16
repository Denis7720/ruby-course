class Temperature
  attr_accessor :value, :from, :to

  def initialize(value, from, to)
    @value = value
    @from = from
    @to = to
  end

  def convert
    case @from
    when 'C' then from_celsius
    when 'K' then from_kelvin
    when 'F' then from_fahrenheit
    else 'Incorrect input!'
    end
  end

  def from_celsius
    case @to
    when 'K' then @value += 273.15
    when 'F' then @value = @value * 1.8 + 32
    else 'Incorrect input!'
    end
  end

  def from_kelvin
    case @to
    when 'C' then @value -= 273.15
    when 'F' then @value = @value * 1.8 - 459.67
    else 'Incorrect input!'
    end
  end

  def from_fahrenheit
    case @to
    when 'C' then @value = (@value - 32) / 1.8
    when 'K' then @value = (@value + 459.67) / 1.8
    else 'Incorrect input!'
    end
  end
end
