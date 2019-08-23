# Let's suppose we want to add a new key/value pair into the first inner hash. Once again, there has to be a two step process: first, reference the first element in the array; next, update the hash.

arr = [{ a: 'ant' }, { b: 'bear' }]

arr[0][:c] = 'cat'
arr # => [{ :a => "ant", :c => "cat" }, { :b => "bear" }]

# First we use arr[0] to retrieve the first inner hash, so we get {a: 'ant'}.
# Next, we use the normal hash key/value creation syntax to create a new key/value pair: {a: 'ant'}[:c] = 'cat'.
# The change is destructive, so the array, arr, reflects the change when we inspect it.
