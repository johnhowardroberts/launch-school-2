# loop do
#   puts 'Should I stop looping?'
#   answer = gets.chomp
# end
#
# Modify the code below so the loop stops iterating when the user inputs 'yes'.

loop do
  puts 'Should I stop looping?'
  answer = gets.chomp
  break if answer == 'yes'
  puts 'Ok I'll keep looping. Should I stop now?'
end
