# Describe the difference between ! and ? in Ruby. And explain what would happen
# in the following scenarios:

what is != and where should you use it?
An operator that means does not equal, used in expressions

put ! before something, like !user_name
turns the object of that thing into the opposite of its boolean output

put ! after something, like words.uniq!
signifies that this is a destructive method

put ? before something
ternary operator for if else

put ? after something
signifies that the return of the method is going to be a boolean

put !! before something, like !!user_name
turns the object of that thing into a boolean
