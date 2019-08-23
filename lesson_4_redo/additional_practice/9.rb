# Titlelize

words = "the flintstones rock"

# split string into array of strings
# loop through with #map and use #capitalize! on each word
# stich back together with #join

p words.split.map { |word| word.capitalize! }.join(' ')
