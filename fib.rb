step = ARGV[0].to_i

def fib(value)
  return value if (0..1).include? value
  return fib(value - 1) + fib(value - 2)
end

puts fib(step)
