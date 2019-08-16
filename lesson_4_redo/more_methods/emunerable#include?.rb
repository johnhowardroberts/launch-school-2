# Enumerable#include?
# include? doesn't take a block, but it does require one argument. It returns true if the argument exists in the collection and false if it doesn't.

[1, 2, 3].include?(1)
# => true
# When called on a hash, include? only checks the keys, not the values.

{ a: "ant", b: "bear", c: "cat" }.include?("ant")
# => false

{ a: "ant", b: "bear", c: "cat" }.include?(:a)
# => true
# In fact, Hash#include? is essentially an alias for Hash#key? or Hash#has_key?. In practice,
# Rubyists would usually prefer these methods over include? as they make the intention more explicit.
#
# If we wanted to find out if a value exists within a hash, we could use the Hash#value? or
# Hash#has_value? methods: hash.has_value?('cat'). These methods have an advantage over, say,
# calling the Hash#values method and then chaining include? in that there is one less method to call:
# hash.values.include?('cat').
