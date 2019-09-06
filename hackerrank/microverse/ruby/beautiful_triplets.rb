=begin

Beautiful Triplets

Given a sequence of integers , a triplet  is beautiful if:

Given an increasing sequenc of integers and the value of , count the number of
beautiful triplets in the sequence.

For example, the sequence  and . There are three beautiful triplets, by index:
 . To test the first triplet,  and .

=end

def beautifulTriplets(d, arr)
  num_triplets = 0
  (0..arr.length - 1).each do |i|
    num_triplets += 1 if [arr[i] + d] - arr === [] && [arr[i] + 2 * d] - arr === []
  end
  p num_triplets
end

beautifulTriplets 3, [1, 2, 4, 5, 7, 8, 10]
beautifulTriplets 3, [1, 6, 7, 7, 8, 10, 12, 13, 14, 19]
