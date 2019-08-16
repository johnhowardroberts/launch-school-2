[1, 2, 3].any? do |num|
  num > 2
end
# => true

# can also be used with a hash if you pass two paramaters into the block

{ a: "ant", b: "bear", c: "cat" }.any? do |key, value|
  value.size > 4
end
# => false because it is looking at the size of the string length 
