def new_roman_numeral number
  a = ''
  while number != 0
    if number >= 1000
      countNum = number / 1000
      number = number % 1000
      while countNum > 0
        a = a + 'M'
        countNum = countNum - 1
      end
    elsif number >= 100
      countNum = number / 100
      number =  number % 100
      if countNum == 9
        a = a + 'CM'
      elsif countNum == 4
        a = a + 'CD'
      elsif countNum >= 5
        a = a + 'D'
        countNum = countNum - 5
        while countNum > 0
          a = a + 'C'
          countNum = countNum - 1
        end
      else
        while countNum > 0
          a = a + 'C'
          countNum = countNum - 1
        end
      end
    elsif number >= 10
      countNum = number / 10
      number = number % 10
      if countNum == 9
        a = a + 'XC'
      elsif countNum == 4
        a = a + 'XL'
      elsif countNum >= 5
        a = a + 'L'
        countNum = countNum - 5
        while countNum > 0
          a = a + 'X'
          countNum = countNum - 1
        end
      else
        while countNum > 0
          a = a + 'X'
          countNum = countNum - 1
        end
      end
    elsif number >= 1
      countNum = number
      number = number % 1
      if countNum == 9
        a = a + 'IX'
      elsif countNum == 4
        a = a + 'IV'
      elsif countNum >= 5
        a = a + 'V'
        countNum = countNum - 5
        while countNum > 0
          a = a + 'I'
          countNum = countNum - 1
        end
      else
        while countNum > 0
          a = a + 'I'
          countNum = countNum - 1
        end
      end
    end
  end
  puts a
end

puts new_roman_numeral 4
puts new_roman_numeral 9
puts new_roman_numeral 40
puts new_roman_numeral 90
puts new_roman_numeral 400
puts new_roman_numeral 900
puts new_roman_numeral 8
puts new_roman_numeral 20
puts new_roman_numeral 600
