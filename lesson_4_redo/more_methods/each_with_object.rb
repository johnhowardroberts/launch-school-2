# Besides taking a block like the methods above, each_with_object takes a method argument.
# The method argument is a collection object that will be returned by the method.
# On top of that, the block takes 2 arguments of its own. The first block argument
# represents the current element and the second block argument represents the collection
# object that was passed in as an argument to the method. Once it's done iterating, the
# method returns the collection object that was passed in. Sounds confusing, but let's look at an example.

[1, 2, 3].each_with_object([]) do |num, array|
  array << num if num.odd?
end
# => [1, 3]

# In the above example, array is initialized to an empty array, [].
# Inside the block, we can now manipulate array. In this case, we're just appending
#   the current num into it if it's odd.

# Similar to each_with_index, the first block argument turns into an array when we invoke each_with_object on a hash.

{ a: "ant", b: "bear", c: "cat" }.each_with_object([]) do |pair, array|
  array << pair.last
end
# => ["ant", "bear", "cat"]

# As an additional quirk, it's possible to use parentheses to capture the key and
# value in the first block argument.

{ a: "ant", b: "bear", c: "cat" }.each_with_object({}) do |(key, value), hash|
  hash[value] = key
end
# => { "ant" => :a, "bear" => :b, "cat" => :c }
You should probably stick to one format in your own code, but it's nice to know alternative syntax when reading other people's code.
