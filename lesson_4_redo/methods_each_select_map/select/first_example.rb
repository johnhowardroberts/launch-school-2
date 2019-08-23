# For example, instead of managing a loop manually with a counter and break condition, we can just do this:

[1, 2, 3].select do |num|
  num.odd? # will return true or false and select based on truthiness i.e not nil or false, could be numbers too
end

# To perform selection, select evaluates the return value of the block.
