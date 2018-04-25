total_length = ARGV[0].to_i

def stepCombinations(total_length)
  return 0 if total_length < 0
  return 1 if total_length == 0

  return stepCombinations(total_length - 1) +
         stepCombinations(total_length - 2) +
         stepCombinations(total_length - 3)
end

puts stepCombinations(total_length)
