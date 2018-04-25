min_steps, max_steps, total_length = ARGV.map(&:to_i)

raise ArgumentError, 'min_steps must be less than max_steps' if min_steps > max_steps
raise ArugmentError, 'total_length must be greater than min_steps' if min_steps > total_length

def stepCombinations(min_steps, max_steps, total_length)
  # if x > total_length
  #   return 0
  # elsif x == total_length
  #   return 1
  # end
  # TODO: make this fully dynamic
  # (min_steps..max_steps).each do |x|
  #   return stepCombinations(min_steps, max_steps, total_length - x)
  # end

  if total_length == 0
    return 1
  elsif total_length < 0
    return 0
  end

  return stepCombinations(min_steps, max_steps, total_length - 1) +
         stepCombinations(min_steps, max_steps, total_length - 2) +
         stepCombinations(min_steps, max_steps, total_length - 3)
end

puts stepCombinations(min_steps, max_steps, total_length)
