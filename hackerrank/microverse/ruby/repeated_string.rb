=begin

Repeated String

Lilah has a string, , of lowercase English letters that she repeated infinitely many times.

Given an integer, , find and print the number of letter a's in the first  letters of Lilah's infinite string.

For example, if the string  and , the substring we consider is , the first
characters of her infinite string. There are  occurrences of a in the substring.

=end


def repeatedString(s, n)
    s.count('a') * n.div(s.size) + s.slice(0,n.remainder(s.size)).count('a')
end

p repeatedString "aba", 10
p repeatedString "a", 1000000000000
