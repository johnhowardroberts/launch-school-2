#In the array:

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# Find the index of the first name that starts with "Be"

# loop over the index positions
# use #start_with? method to look for "Be"
# if returns true, exit loop

flintstones.each_with_index do |name, idx|
  if name.start_with?("Be")
    puts name
    break
  end
end

# or

flintstones.index { |name| name[0, 2] == "Be" }
