# Write a loop that prints numbers 1-5 and whether the number is even or odd.
# Use the code below to get started.
#
# count = 1
#
# loop do
#   count += 1
# end
#
# Write a loop that prints numbers 1-5 and whether the number is even or odd. Use the code below to get started.

count = 1

loop do

  if count.odd?
    puts "#{count} is odd!"
  elsif count.even?
    puts "#{count} is even!"
  else
    puts "Something doesn't seem right."
  end

  count += 1
  break if count >= 6
end

# break statement for when count hits 5
# inner loop that checks for odd or even, and prints out message based on result
