# Given the array of several numbers below, use an until loop to print each number.
#
# numbers = [7, 9, 13, 25, 18]

# Expected output:
#
# 7
# 9
# 13
# 25
# 18
#
# Given the array of several numbers below, use an until loop to print each number.

numbers = [7, 9, 13, 25, 18]

until numbers.size == 0
  puts numbers[0]
  numbers.shift
end

# or if you don't want to delete the numbers from the array

# count = 0
#
# until count == numbers.size
#   puts numbers[count]
#   count += 1
# end
