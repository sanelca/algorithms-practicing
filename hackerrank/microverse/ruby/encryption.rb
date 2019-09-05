=begin

https://www.hackerrank.com/contests/microverse-coding-challenges/challenges/encryption/problem

=end

def encryption(s)
  arr = []
  columns = Math.sqrt(s.length)
  index = (s.length / columns.floor.to_f) > columns.floor ? columns.ceil : columns.floor
  s.chars.group_by.with_index { |ele, i| i % index }.each_value { |x| arr << x.join("") }
  return arr.join(" ")

end

p encryption "haveaniceday"
p encryption "feedthedog"
p encryption "chillout"
