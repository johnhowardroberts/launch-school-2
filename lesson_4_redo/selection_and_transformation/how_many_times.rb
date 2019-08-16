# We'll wrap up this assignment with one more example from earlier.
# Recall our initial selection example of selecting the letter 'g' out of the alphabet.
# Let's write a method called select_letter, that takes a string and
# returns a new string containing only the letter that we specified. We want it to behave like this:

question = 'How many times does a particular character appear in this sentence?'

# - Create a method, select_letter that takes 2 arguments
# --- A variable, question, that is a string, string_var
# --- A string, which is a single letter, user_letter
# -- Create a empty string variable to contain the matching characters into a string, matching_chars
# -- Create a counter that will represent the index position of the string
# -- Begin loop
# --- Break if variable size == counter
# --- Create current_char variable, make it == index position (counter) of string
# --- If current_char == user_letter
# ---- matching_chars << current_char
# ---- increase counter by 1
# -- End loop
# - Call matching_chars
# - End

def select_letter(string_var, user_letter)
  matching_chars = ''
  counter = 0

  loop do
    break if string_var.size == counter

    current_char = string_var[counter]
    matching_chars << current_char if current_char == user_letter

    counter += 1
  end

  matching_chars
end

p select_letter(question, 'a') # => "aaaaaaaa"
p select_letter(question, 't') # => "ttttt"
p select_letter(question, 'z') # => ""


# # PEDAC
#
# # P
#
# We are writing a method that takes two arguments, 1) a string variable and 2) a single letter string
# We are calling that method, and the output should be a string containing the second argument string letter,
# the number of times it appears in the first argument
#
# # E
#
# question = 'How many times does a particular character appear in this sentence?'
#
# select_letter(question, 'a') # => "aaaaaaaa"
# select_letter(question, 't') # => "ttttt"
# select_letter(question, 'z') # => ""
#
# # D
#
# input >> string, string
# output >> string
#
# # A - above
#
