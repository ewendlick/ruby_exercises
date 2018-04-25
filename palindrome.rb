input = ARGV[0]

def isPalendrome?(input)
  length = input.length

  return false if length == 0
  return true if length == 1

  index_offset = 0

  checking_limit = (length / 2).floor
  while (index_offset < checking_limit) do
    return false if input[index_offset] != input[length - index_offset - 1]
    index_offset += 1
  end
  true
end

puts isPalendrome?(input) ? 'IS' : 'ISN\'T'
