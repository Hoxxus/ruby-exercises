test_arr = [17,3,6,9,15,8,6,1,10]

def stock_picker(arr)
  compare = -1.0/0.0 # -Infinity for inital compare
  
  i = 0
  
  best_buy = [0, 0]

  while i < (arr.length - 1) do
    j = i
    
    while j < (arr.length - 1) do
      diff = arr[j+1] - arr[i]
      if diff > compare
        compare = diff
        best_buy = [i, j+1]
      end
      j += 1
    end

    i += 1
  end
  best_buy
end

p stock_picker(test_arr)  #=> [1,4]  # for a profit of $15 - $3 == $12