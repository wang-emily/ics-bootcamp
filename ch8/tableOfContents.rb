line_width = 30
array = ['Table of Contents','Chapter 1: Getting Started','Chapter 2: Numbers','Chapter 3: Letters','page 1','page 9','page 13']
puts (array[0].center(line_width))
puts (array[1].ljust(line_width)) + (array[4].rjust(line_width))
puts (array[2].ljust(line_width)) + (array[5].rjust(line_width))
puts (array[3].ljust(line_width)) + (array[6].rjust(line_width))
