my_numbers = [1, 4, 3, 7, 2, 6]

def double_odd_index_nums(numbers)
  new_array = []
  counter = 0

  loop do
    break if counter == numbers.size

    current_number = numbers[counter]
    current_number *= 2 if counter.odd?
    new_array << current_number

    counter += 1
  end

  new_array
end

p double_odd_index_nums(my_numbers)
