def secuencial_search(num)
  array = (1..1000000).to_a
    array.each do |i|
      break if i == num  
    end
end

def binary_search(num)
  array = (1..1000000).to_a
  bajo = 0
  entrada = 0
  alto = array.length - 1
    while bajo <= alto
       entrada += 1 
       medio = (bajo + alto)/2 
       if num == array[medio]
          break
       elsif num < array[medio]
          alto = medio - 1
       else
          bajo = medio + 1
       end 
    end
end

binary_search(56789)  
secuencial_search(56789)

require 'benchmark'
num = 1000000
Benchmark.bm do |x|
  x.report("binary    ") {binary_search(num)}
  x.report("secuencial")  {secuencial_search(num)}
end

