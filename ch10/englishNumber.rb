def english_number_1000 number
  num_string = '' # This is the string we will return.
  ones_place = ['one', 'two', 'three','four', 'five', 'six','seven', 'eight', 'nine']
  tens_place = ['ten', 'twenty', 'thirty','forty', 'fifty', 'sixty','seventy', 'eighty', 'ninety']
  teenagers = ['eleven', 'twelve', 'thirteen','fourteen', 'fifteen', 'sixteen','seventeen', 'eighteen', 'nineteen']
  left = number
  write = left/100 # How many hundreds left?
  left = left - write*100 # Subtract off those hundreds.
  if write > 0
    num_string = num_string + ones_place[write-1] + ' hundred'
    if left > 0
      # So we don't write 'two hundredfifty-one'...
      num_string = num_string + ' '
    end
  end

  write = left/10 # How many tens left?
  left = left - write*10 # Subtract off those tens.
  if (write >=1)
    if ((write == 1) and (left > 0))
      num_string = num_string + teenagers[left-1]
      left = 0
    else
      num_string = num_string + tens_place[write-1]
    end
    if left > 0
      num_string = num_string + '-'
    end
  end

  write = left # How many ones left to write out?
  left = 0 # Subtract off those ones.
  if write > 0
    num_string = num_string + ones_place[write-1]
  end
  return num_string
end

def english_number number
  num_string = ''
  if number < 0 # No negative numbers.
    return 'Please enter a number that isn\'t negative.'
  end
  if number == 0
    return 'zero'
  end
  left = number

  write = left/1000000000000 # How many trillions left?
  left = left - write*1000000000000
  if write > 0
    trillions = english_number_1000 write
    num_string = num_string + trillions + ' trillion'
    if left > 0
      num_string = num_string + ' '
    end
  end

  write = left/1000000000 # How many billions left?
  left = left - write*1000000000
  if write > 0
    billions = english_number_1000 write
    num_string = num_string + billions + ' billion'
    if left > 0
      num_string = num_string + ' '
    end
  end

  write = left/1000000 # How many millions left?
  left = left - write*1000000
  if write > 0
    millions = english_number_1000 write
    num_string = num_string + millions + ' million'
    if left > 0
      num_string = num_string + ' '
    end
  end

  write = left/1000 # How many thousands left?
  left = left - write*1000
  if write > 0
    thousands = english_number_1000 write
    num_string = num_string + thousands.to_s + ' thousand'
    if left > 0
      num_string = num_string + ' '
    end
  end

  if left > 0
    ones = english_number_1000 left
    num_string = num_string + ones
  end
  return num_string
end

puts english_number( 9)
puts english_number( 10)
puts english_number( 11)
puts english_number( 17)
puts english_number( 32)
puts english_number( 88)
puts english_number( 99)
puts english_number(100)
puts english_number(101)
puts english_number(234)
puts english_number(3211)
puts english_number(4231232)
puts english_number(10000)
puts english_number(1000000)
