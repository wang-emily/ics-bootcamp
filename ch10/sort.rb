def sort some_array
  recursive_sort some_array, []
end

def recursive_sort unsorted_array, sorted_array
    if unsorted_array.length == 0
      puts sorted_array
    else
      n = 0
      tmpV = unsorted_array[n]
      while n +1 < unsorted_array.length
        if unsorted_array[n+1] < tmpV
          tmpV2 = tmpV
          tmpV= unsorted_array[n+1]
          unsorted_array[n+1] = tmpV2
        end
        n = n + 1
      end
     sorted_array.push(tmpV)
     recursive_sort unsorted_array[1,unsorted_array.length], sorted_array
   end
 end


recursive_sort ["hello", "yellow", "hats"], []

sort ["cbbb", "aaaa", "dddd"]
