def old_roman_numeral number
  a = ''
  while number != 0
    if number >= 1000
      countNum = number / 1000
      number = number % 1000
      while countNum > 0
        a = a + 'M'
        countNum = countNum - 1
      end
    elsif number >= 500
      countNum = number / 500
      number = number % 500
      while countNum > 0
        a = a + 'D'
        countNum = countNum - 1
      end
    elsif number >= 100
      countNum = number / 100
      number =  number % 100
      while countNum > 0
        a = a + 'C'
        countNum = countNum - 1
      end
    elsif number >= 50
      countNum = number / 50
      number = number % 50
      while countNum > 0
        a = a + 'L'
        countNum = countNum - 1
      end
    elsif number >= 10
      countNum = number / 10
      number = number % 10
      while countNum > 0
        a = a + 'X'
        countNum = countNum - 1
      end
    elsif number >= 5
      countNum = number / 5
      number = number % 5
      while countNum > 0
        a = a + 'V'
        countNum = countNum - 1
      end
    elsif number >= 1
      countNum = number
      number = number % 1
      while countNum > 0
        a = a + 'I'
        countNum = countNum - 1
      end
    end
  end
  puts a
end
puts old_roman_numeral 7458
