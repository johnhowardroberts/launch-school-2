# Create a hash that expresses the frequency with which each letter occurs in this string:

statement = "The Flintstones Rock"

# ex:

# { "F"=>1, "R"=>1, "T"=>1, "c"=>1, "e"=>2, ... }

result = {}
letters = ('A'..'Z').to_a + ('a'..'z').to_a
letters.each do |letter|
  letter_frequency = statement.scan(letter).count
  result[letter] = letter_frequency if letter_frequency > 0
end

# check out String#scan

# scan(pattern) → array
# scan(pattern) {|match, ...| block } → str
# Both forms iterate through str, matching the pattern (which may be a Regexp or a String). For each match, a result is generated and either added to the result array or passed to the block. If the pattern contains no groups, each individual result consists of the matched string, $&. If the pattern contains groups, each individual result is itself an array containing one entry per group.
#
# a = "cruel world"
# a.scan(/\w+/)        #=> ["cruel", "world"]
# a.scan(/.../)        #=> ["cru", "el ", "wor"]
# a.scan(/(...)/)      #=> [["cru"], ["el "], ["wor"]]
# a.scan(/(..)(..)/)   #=> [["cr", "ue"], ["l ", "wo"]]
# And the block form:
#
# a.scan(/\w+/) {|w| print "<<#{w}>> " }
# print "\n"
# a.scan(/(.)(.)/) {|x,y| print y, x }
# print "\n"
# produces:
#
# <<cruel>> <<world>>
# rceu lowlr
