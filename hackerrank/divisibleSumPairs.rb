# Exercise: https://www.hackerrank.com/challenges/divisible-sum-pairs/problem
# Sample input
#   6 3
#   1 3 2 6 1 2

def divisibleSumPairs(n, k, ar)
  ar.combination(2).count { |a, b| (a + b) % k == 0 }
end

n, k = gets.strip.split(' ')
n = n.to_i
k = k.to_i
ar = gets.strip
ar = ar.split(' ').map(&:to_i)
result = divisibleSumPairs(n, k, ar)
puts result;
