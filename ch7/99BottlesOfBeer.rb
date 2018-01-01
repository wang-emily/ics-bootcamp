input = 99
while true
  puts input.to_s + ' bottles of beer on the wall, ' + input.to_s + ' bottles of beer.'
  input = input - 1
  puts 'Take one down, pass it around, ' + input.to_s + ' bottles of beer on the wall.'
  if input == 1
    break
  end
end
puts '1 bottle of beer on the wall, 1 bottle of beer.'
puts 'Take one down, pass it around, 0 bottles of beer on the wall.'
