def shuffle some_array
  recursive_shuffle some_array, []
end

def recursive_shuffle not_shuffled_array, shuffled_array
  if not_shuffled_array.length == 0
    puts shuffled_array
  else
    n = not_shuffled_array.length
    random = rand(n)
    chosen_one = not_shuffled_array[random]
    shuffled_array.push(chosen_one)
    recursive_shuffle not_shuffled_array[0,random] + not_shuffled_array[random+1,not_shuffled_array.length], shuffled_array
  end
end

shuffle ["Emily", "Angelina", "Jun", "Jenny"]
