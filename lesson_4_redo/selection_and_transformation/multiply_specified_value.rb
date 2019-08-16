# Try coding a method that allows you to multiply every array item by a specified value

my_numbers = [1, 4, 3, 7, 2, 6]

def multiply(numbers, user_selection)
  multipled_numbers = []
  counter = 0

  loop do
    break if multipled_numbers.size == counter

    multipled_numbers << numbers[counter] * user_selection

    counter += 1
  end

  p multipled_numbers
end



multiply(my_numbers, 3)
