min_steps, max_steps, total_length = ARGV.map(&:to_i)

class Steps
  def initialize(min_steps, max_steps, total_length)
    raise ArgumentError, 'min_steps must be less than max_steps' if min_steps > max_steps
    raise ArugmentError, 'total_length must be greater than min_steps' if min_steps > total_length
    @min_steps = min_steps
    @max_steps = max_steps
    puts stepCombinations(total_length)
  end


  def stepCombinations(total_length)
    if total_length == 0
      return 1
    elsif total_length < 0
      return 0
    end

    return (@min_steps..@max_steps).reduce(0) do |total, val|
      total + stepCombinations(total_length - val)
    end
  end
end

Steps.new(min_steps, max_steps, total_length)
