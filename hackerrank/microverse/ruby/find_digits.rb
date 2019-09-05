=begin

Find Digits

An integer  is a divisor of an integer  if the remainder of .

Given an integer, for each digit that makes up the integer determine whether
it is a divisor. Count the number of divisors occurring within the integer.

Note: Each digit is considered to be unique, so each occurrence of the same
digit should be counted (e.g. for ,  is a divisor of
each time it occurs so the answer is ).

=end

def findDigits(n)
  p n.to_s.delete('0').chars.count { |a| n % a.to_i == 0 }

end

findDigits 12
findDigits 1012
