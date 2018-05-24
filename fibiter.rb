steps = ARGV[0].to_i

def fibIter(value)
  return value if (0..1).include? value

  left = 0
  right = 1

  (value - 1).times do
    left, right = right, left + right
  end
  right
end

puts fibIter(steps)
