byeTimes=0
while true
  string = gets.chomp
  if string != string.upcase
    puts 'HUH?! SPEAK UP SONNY'
  elsif string == 'BYE'
    byeTimes = byeTimes +1
    if byeTimes==3
      puts 'GOODBYE SONNY!'
      break
    else puts 'NO, NOT SINCE ' + (1930 + rand(20)).to_s + '!'
    end
  else puts 'NO, NOT SINCE ' + (1930 + rand(20)).to_s + '!'
  end
end
