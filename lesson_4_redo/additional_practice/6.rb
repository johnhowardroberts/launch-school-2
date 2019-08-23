# Amend this array so that the names are all shortened to just the first three characters:

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# loop through the array
# need to transform each so use #map
# replace name with name[0, 2]

flintstones.map! do |name|
  name = name[0, 3]
end

p flintstones
