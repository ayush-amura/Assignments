require 'benchmark'
#Summation
def sum_n(n)
  a = n.abs+1
  arr = []
  sum = 0
  0.upto(a) do |index|
       n<0 ? sum = sum - index : sum = sum + index
       arr << sum
    end
return arr
end
p sum_n(5)
p sum_n(-5)


puts Benchmark.measure{ sum_n(5) }
