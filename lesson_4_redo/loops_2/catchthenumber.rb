# Modify the following code so that the loop stops if number is between 0 and 10.
#
# loop do
#   number = rand(100)
#   puts number
# end
#
# Modify the following code so that the loop stops if number is between 0 and 10.

loop do
  number = rand(100)
  puts number
  break if number.between?(0, 10) # here if you want to see the number that stopped the loop 
end
