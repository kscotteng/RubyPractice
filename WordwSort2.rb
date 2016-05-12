# Re-write original Word Sort program to sort words without using the sort method.
# Program asks the user to enter random words.
# One word per line. Continuing until the Enter key is pressed on an empty line.
# The code will return all words entered in alphabetical order.
# Do NOT use the sort method this time.

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

input = gets.chomp

while input != "" do
  random_words << input.capitalize
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
  sorted_words = []
    sorted_words << random_words.find_all {|a| a.chr[0] == "F"}
    sorted_words << random_words.find_all {|a| a.chr[0] == "O"}
    sorted_words << random_words.find_all {|a| a.chr[0] == "T"}
    puts sorted_words
  # puts random_words.sort { |a, b| a.upcase <=> b.upcase }
  puts ''
