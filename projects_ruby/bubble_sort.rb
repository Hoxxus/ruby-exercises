test_arr = [4,3,78,2,0,2,8,3,-1]

def bubble_sort(arr)
  keep_going = true

  while keep_going do
    i = 0
    keep_going = false
    
    while i < arr.length - 1 do
      if arr[i] > arr[i+1]
        arr[i], arr[i+1] = arr[i+1], arr[i]
        keep_going = true
      end
      i += 1
    end 
     
  end
  arr
end

p bubble_sort(test_arr)