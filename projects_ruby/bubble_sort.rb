test_arr = [4,3,78,2,0,2,8,3,-1]

def bubble_sort(arr)
  sorted_arr = arr
  keep_going = true
  swap_counter = 0
  i = 0

  while keep_going do

    while i < sorted_arr.length - 1 do
      if sorted_arr[i] > sorted_arr[i+1]
        sorted_arr.unshift(sorted_arr[i+1])
        sorted_arr.delete_at(i+2)
        swap_counter += 1
      end
      i += 1
    end  
    
    if swap_counter > 0
      i = 0
      swap_counter = 0
    else
      keep_going = false
    end
  
  end
  sorted_arr
end

p bubble_sort(test_arr)