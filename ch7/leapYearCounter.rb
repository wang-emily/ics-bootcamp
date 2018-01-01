puts 'What is the starting year?'
starting = gets.chomp.to_i
puts 'What is the ending year?'
ending = gets.chomp.to_i
while starting < ending
if starting.to_i % 4 == 0 && starting.to_i % 100 != 0
  puts starting.to_s
end
starting = starting +1
end
