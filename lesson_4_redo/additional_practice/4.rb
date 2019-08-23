# Pick out the minimum age from our current Munster family hash:

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

p ages.sort_by { |name, age| age }.first

# or

ages.values.min

# this takes Hash#values to return an array of the values, and then Enum#min that returns the minimum value of the array 
