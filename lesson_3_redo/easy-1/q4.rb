# The Ruby Array class has several methods for removing items from the array.
# Two of them have very similar names. Let's see how they differ:

numbers = [1, 2, 3, 4, 5]

# What do the following method calls do (assume we reset numbers to
# the original array between method calls)?

numbers.delete_at(1)
# deletes the number at the index position passed in as parameter
# [1,3,4,5]

numbers.delete(1)
# deletes all items that match the passed in object i.e. 1
# => [2,3,4,5]
