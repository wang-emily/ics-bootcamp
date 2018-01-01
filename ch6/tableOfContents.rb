line_width = 30
str1 = 'Table of Contents'
str2 = 'Chapter 1: Getting Started'
str3 = 'Chapter 2: Numbers'
str4 = 'Chapter 3: Letters'
str5 = 'page 1'
str6 = 'page 9'
str7 = 'page 13'
puts (str1.center(line_width))
puts (str2.ljust(line_width)) + (str5.rjust(line_width))
puts (str3.ljust(line_width)) + (str6.rjust(line_width))
puts (str4.ljust(line_width)) + (str7.rjust(line_width))
