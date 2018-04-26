rows = ARGV[0].to_i

def pascalRow(array)
  built_array = [1]
  (array.length-1).times do |i|
    built_array += [array[i] + array[i + 1]]
  end
  built_array += [1]
end

previous_row = [1]
(0..rows - 1).each do |x|
  puts "#{x+1}: #{previous_row.inspect}"
  previous_row = pascalRow(previous_row)
end
