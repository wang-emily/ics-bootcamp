words = []
start=0
while true
word = gets.chomp
if word == ''
  break
else words[start] = word
  start=start+1
end
end
result = words.sort
puts result
