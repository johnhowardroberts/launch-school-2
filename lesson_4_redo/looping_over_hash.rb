number_of_pets = {
  'dogs' => 2,
  'cats' => 4,
  'fish' => 1
}
pets = number_of_pets.keys # => ['dogs', 'cats', 'fish'] # saved all the keys into a new array
counter = 0

loop do
  break if counter == number_of_pets.size
  current_pet = pets[counter] # with each loop, set current_pet variable to be the next iteration of pets array e.g. cats, fish
  current_pet_number = number_of_pets[current_pet] # we pass in the hash, and then the key that was determined on the line above. The new variable current_pet_number looks is assigned the value of that key. IMPORTANT NOTE!
  puts "I have #{current_pet_number} #{current_pet}!"
  counter += 1
end
