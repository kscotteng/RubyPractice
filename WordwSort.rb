# Write a program which asks the user to enter random words.
# One word per line. Continuing until the Enter key is pressed on an empty line.
# The code will return all words entered in alphabetical order.
# Hint: use the sort method.

random_words = []
puts ''
puts 'Welcome to the Random Word Sorter...'
puts ''
puts 'Instructions:  Enter one (and only one) random word per line.'
puts '               Once you have exhausted your vocabulary,'
puts '               Simply hit the Enter key.'
puts ''
puts 'Your extensive vocabulary will then be listed in alphabetical order.'

puts ''
puts 'Enter one random word:'
puts ''

while input = gets.chomp
  puts ''
  puts 'Enter another random word:'
  puts ''
  random_words << input
  if input ==''
    puts random_words
end
end
