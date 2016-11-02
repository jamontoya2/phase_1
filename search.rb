def linear_search(num,random_numbers)
  i=0  
    while i <= random_numbers.length do
      if num == random_numbers[i]  
        puts  i  
      end
      i += 1
    end
end
random_numbers = [ 4, 3, 2, 20, 5, 64, 78, 11, 43 ]
linear_search(64, random_numbers)
# => 3

def global_linear_search(exp, arr)
  new_arr=[]
    for i in 0..arr.length do
      if arr[i] == exp
        new_arr << i
      end 
    end 
   new_arr
end
 arr = "entretenerse".split('')
 p global_linear_search("e", arr)
 # => [0, 4, 6, 8, 11]
