# We stated previously that there generally isn't a need to sort hashes,
# since hash values are accessed via their keys rather than position.
# If you did want to sort a hash however, calling sort_by on it would be a way to do so.
#
# When calling sort_by on a hash, two arguments need to be passed to the block -
# the key and the value. In the people hash in the following example, the keys are
# each person's name and the values are their ages.

people = { Kate: 27, john: 25, Mike:  18 }

# The last argument evaluated in the block should then be the thing by which we
# want to sort, so if we wanted the hash sorted by age we could do the following:

people.sort_by do |name, age|
  age
end
# => [[:Mike, 18], [:john, 25], [:Kate, 27]]

# sort_by always returns an array, even when called on a hash, so the result here
# is a new array with the key-value pairs as objects in nested arrays. If we need
# to convert this back into a hash we can call Array#to_h on it.
