inputs = ARGV

def isAnagram?(inputs)
  return false if inputs.length != 2
  return false if !inputs.map{|x| x.length}.reduce{|acc, x| acc == x}

  char_counter = Hash.new(0)

  inputs.each do |input|
    input.split('').each do |char|
      # Checks if nil, and converts to 0
      # char_counter[char] = (char_counter[char] || 0) + 1
      #
      # Works because .to_i converts nil to 0
      # char_counter[char] = char_counter[char].to_i + 1
      #
      # works because hash is created with a default: Hash.new(default)
      char_counter[char] += 1
    end
  end

  return char_counter.values.uniq.length == 1
end

puts isAnagram?(inputs) ? 'IS' : 'ISN\'T'
