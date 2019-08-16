# Algorithm:
#  - initialize a result variable to an empty array
#  - create an array named substring_arr that contains all of the
#    substrings of the input string that are at least 2 characters long.
#  - loop through the words in the substring_arr array.
#  - if the word is a palindrome, append it to the result
#    array
#  - return the result array

The easy parts of this are:

# initialize array
# looping through array and selecting based on condition
# append result to array based on if condition
# return the array

More difficult

# Finding all substrings of more than 2 or more character in the given string, and passing to the substring_arr
# Determining whether substring is a palindrome

Realize first that getting all of the substrings into the substring_arr is the most crucial part of the task

Best way to approach is to extract into its own sub-algorithm
and use a SMALL CONCRETE test case to work out your approach.

In this case, a test string, such as 'halo' will return:

  ["ha", "hal", "halo", "al", "alo", "lo"]

  Look for the pattern
  - tracking the index position of the relevant starting letter i.e. index position h = 0, a = 1, l = 2
  - and the index position of the last letter i.e. index position +1, +2, +3

  Now we can write an algorith for this sub-algorithm piece

  Begin Method
    Create an empty array for all of the substrings to go into e.g. result
    Create variable to track the first letter of the substring and assign it an index position e.g. substring_index_start = 0
    Create variable to track the final letter of the substring and assign it the next index position e.g. substring_index_end = substring_index_start + 1
    Create an outer loop that will break when substring_index_start == str.size (i.e. there are no more substrings to begin)
      Create an inner loop that will break when substring_index_end == str.size (i.e. there are no more characters to create a substring with)
      Append the part of the string to substring_arr
        Then increment substring_index_end + 1 and repeat loop (this loop will break once substring_index_end == str.size)
      End inner loop
      Increment substring_index_start + 1
      Reassign substring_index_end to substring_index_start += 1 and repeat outer loop (this loop will break once substring_index_start == str.size)
    End outer loop
    Return result array
  End method
