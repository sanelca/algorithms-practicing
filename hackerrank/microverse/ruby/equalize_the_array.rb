def equalizeArray(arr)
  max = 0
  arr.each do |num|
      count = arr.count(num)
      max = count if count > max
  end
  return arr.length - max

end

p equalizeArray [3, 3, 2, 1, 3]
p equalizeArray [1, 2, 3, 1, 2, 3, 3, 3]
