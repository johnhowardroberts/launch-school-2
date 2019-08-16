# In this example we want to select the key-value pairs where the value is 'Fruit'.
#
# produce = {
#   'apple' => 'Fruit',
#   'carrot' => 'Vegetable',
#   'pear' => 'Fruit',
#   'broccoli' => 'Vegetable'
# }
#
# select_fruit(produce) # => {"apple"=>"Fruit", "pear"=>"Fruit"}
#
# In this example we want to select the key-value pairs where the value is 'Fruit'.


produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}


def select_fruit(produce_list)
  food_list = produce_list.keys
  counter = 0
  fruits = {}

  loop do
    break if counter == food_list.size

    current_food_key = food_list[counter]
    current_food_value = produce_list[current_food_key]

    if current_food_value == 'Fruit'
      fruits[current_food_key] = current_food_value
    end
    counter += 1
  end

fruits

end

p select_fruit(produce) # => {"apple"=>"Fruit", "pear"=>"Fruit"}
