# In the age hash:

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

# throw out the really old people (age 100 or older).

# look for a remove style method >>> #delete_if

ages.delete_if { |name, age| age > 99 }

# or

ages.keep_if { |_, age| age < 100 }
