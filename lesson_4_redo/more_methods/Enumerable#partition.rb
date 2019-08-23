# Enumerable#partition
# partition divides up elements in the current collection into two collections, depending on the block's return value. For example:

[1, 2, 3].partition do |num|
  num.odd?
end
# => [[1, 3], [2]]
# The return value is a nested array, with the inner arrays separated based on the return value of the block. The most idiomatic way to use partition is to parallel assign variables to capture the divided inner arrays:

odd, even = [1, 2, 3].partition do |num|
  num.odd?
end

odd  # => [1, 3]
even # => [2]
# Even if the collection is a hash, the return value of partition will always be an array.

long, short = { a: "ant", b: "bear", c: "cat" }.partition do |key, value|
  value.size > 3
end
# => [[[:b, "bear"]], [[:a, "ant"], [:c, "cat"]]]
# To transform these arrays back into a hash, we can invoke Array#to_h.

long.to_h # => { :b => "bear" }
short.to_h  # => { :a => "ant", :c => "cat" }
