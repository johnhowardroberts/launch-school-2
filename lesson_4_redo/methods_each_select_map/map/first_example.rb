
# The main difference between these two methods is that map uses the return value of the block to perform transformation instead of selection.

[1, 2, 3].map do |num|
  num * 2
end

# => [2, 4, 6]

# map always performs transformation based on the return value of the block, so

[1, 2, 3].map do |num|
  num.odd?
end

# => [true, false, true] 
