# Modify the code below so that the user's input gets added to the numbers array.
# Stop the loop when the array contains 5 numbers.
#
# numbers = []
#
# loop do
#   puts 'Enter any number:'
#   input = gets.chomp.to_i
# end
# puts numbers
#
# Modify the code below so that the user's input gets added to the numbers array. Stop the loop when the array contains 5 numbers.

numbers = []

loop do
  puts 'Enter any number:'
  input = gets.chomp.to_i

  loop do
    if input.integer?
       break
    else
      input.integer? == false
        puts "That's not a whole number, try again."
        input = gets.chomp.to_i
    end
  end

    numbers << input

    break if numbers.size >= 5
end
puts numbers

# need to append current input value to the array
# may want to amend to check that we are adding an integer
# need to add a break condition if number.size => 5
