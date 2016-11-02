# def fib_r(a, b, n)
#   n == 0 ? a : fib_r(b, a + b, n - 1)
# end

# def fib(n)
#   fib_r(0, 1, n)
# end

# p (0..2).map{ |n| fib(n) }

module Fib
  @@mem = {}
  def self.compute(index)
    p index
    if index <= 1
      return index
    else
      @@mem[index] ||= (p compute(index-1)) + (p compute(index-2))
    end
  end
end

p Fib.compute(256)