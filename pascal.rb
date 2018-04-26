rows = ARGV[0].to_i

def pascalRow(array)
  i = 0
  built_array = [1]
  while i < array.length - 1 do
    built_array += [array[i] + array[i + 1]]
    i += 1
  end
  built_array += [1]
end

previous_row = [1]
(0..rows - 1).each do |x|
  puts "#{x+1}: #{previous_row.inspect}"
  previous_row = pascalRow(previous_row)
end
