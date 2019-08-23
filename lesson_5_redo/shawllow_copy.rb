# only the object that the method is called on is copied. If the object contains other objects - like a nested array - then those objects will be shared, not copied. This has major impact to nested collections.
#
# dup allows objects within the copied object to be modified.

arr1 = ["a", "b", "c"]
arr2 = arr1.dup
arr2[1].upcase!

arr2 # => ["a", "B", "c"]
arr1 # => ["a", "B", "c"]
# clone works the same way.

arr1 = ["abc", "def"]
arr2 = arr1.clone
arr2[0].reverse!

arr2 # => ["cba", "def"]
arr1 # => ["cba", "def"]

# The reason arr1 objects are changed in this case is because the methods were
#   called on the SHARED objects within the arrays, rather than the array themselves, so can be modified


# FOR REF:


# Consider the following examples:
#
# Example 1

arr1 = ["a", "b", "c"]
arr2 = arr1.dup
arr2.map! do |char|
  char.upcase
end

arr1 # => ["a", "b", "c"]
arr2 # => ["A", "B", "C"]

# Example 2

arr1 = ["a", "b", "c"]
arr2 = arr1.dup
arr2.each do |char|
  char.upcase!
end

arr1 # => ["A", "B", "C"]
arr2 # => ["A", "B", "C"]

# In the first example arr2 is changed but arr1 is not. Here, we call the destructive method Array#map! on arr2; this method modifies the array, replacing each element of arr2 with a new value. Since we are changing the Array, not the elements within it, arr1 is left unchanged.
#
# In the second example, both arr1 and arr2 are changed. Here, we call the destructive String#upcase! method on each element of arr2. However, every element of arr2 is a reference to the object referenced by the corresponding element in arr1. Thus, when #upcase! mutates the element in arr2, arr1 is also affected; we change the Array elements, not the Array.
#
# The important thing to be aware of is exactly what level you're working at, especially when working with nested collections and using variables as pointers; are you working at the level of an outer array or hash, or at the level of an object within that?
