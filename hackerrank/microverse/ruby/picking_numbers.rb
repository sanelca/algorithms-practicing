=begin

Picking Numbers

Given an array of integers, find and print the maximum number of integers
you can select from the array such that the absolute difference between any
two of the chosen integers is less than or equal to . For example,
if your array is , you can create two subarrays meeting the criterion:  and .
The maximum length subarray has  elements.


=end

def pickingNumbers(a)
  return counts = a.map{|x| a.count{|i| i>=x and i<=x+1}}.max
end

p pickingNumbers [4, 6, 5, 3, 3, 1]
p pickingNumbers [1, 2, 2, 3, 1, 2]
