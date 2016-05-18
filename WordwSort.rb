# Write a program which asks the user to enter random words.
# One word per line. Continuing until the Enter key is pressed on an empty line.
# The code will return all words entered in alphabetical order.
# Hint: use the sort method.

random_words = []
lineWidth = 70
puts ''
puts 'Welcome to the Random Word Sorter'.center(lineWidth)
puts ''
puts 'Instructions:'
puts 'Enter one (and only one) random word per line.'
puts 'Once you have exhausted your vocabulary,'
puts 'Simply hit the Enter key.'
puts ''
puts ''
puts 'Your extensive vocabulary will then be listed in alphabetical order.'

puts ''
puts ''
puts 'Enter one random word:'
puts ''

input = gets.chomp

while input != "" do
  random_words << input
  puts ''
  puts 'Enter another random word, or,'
  puts 'simply press the Enter key to quit:'
  puts ''
  input = gets.chomp
end
  puts ''
  puts 'Your words,'
  puts 'sorted alphabetically:'
  puts ''
  puts random_words.sort { |a, b| a.upcase <=> b.upcase }
  puts ''
