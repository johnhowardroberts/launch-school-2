# sort_by is similar to sort but is usually called with a block. The code in the block determines how the items are compared.

['cot', 'bed', 'mat'].sort_by do |word|
  word[1]
end

# => ["mat", "bed", "cot"]

# Here we are sorting using the character at index 1 of each string, so only the characters
# 'a', 'e' and 'o' are compared and the strings ordered
# according to the comparison of those characters. The other characters in the strings are ignored entirely.
