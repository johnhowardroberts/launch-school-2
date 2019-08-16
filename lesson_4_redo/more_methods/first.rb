# first doesn't take a block, but it does take an optional argument which represents the number of elements to return. When no argument is given, it returns only the first element in the collection.

[1, 2, 3].first
# => 1
# When an argument is provided, first will return the specified number of elements.

# Let's now try to call first on a hash.

{ a: "ant", b: "bear", c: "cat" }.first(2)
# => [[:a, "ant"], [:b, "bear"]]

# There are a couple of interesting things of note here.
#
# First, hashes are typically thought of as unordered and values are retrieved by keys. In some programming languages, the order is not preserved at all. This used to be true for Ruby too, but since Ruby 1.9, order is preserved according to the order of insertion. Calling first on a hash doesn't quite make sense, but Ruby lets you do it.
#
# Second, notice that the return value of calling first on a hash with a numeric argument is a nested array. This is unexpected. Fortunately, turning this nested array back to a hash is easy enough: [[:a, "ant"], [:b, "bear"]].to_h.
#
# In practice, first is rarely called on a hash, and most often used with arrays.
