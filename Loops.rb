# Ruby loops:
# a loop will run forever until a condition is met
#     - meaning the condition to exit returns a value of true
# an infinite loop is created when the condition never returns true



# the following code will guess a number bewteen zero and five
# generating a random number (random.new) and give it an argument, ex.(5), for the max value of the random number

random_number = Random.new.rand(5)
loop do
  print "Guess a number between 0 and 5  (press 'x' to exit): "
  guess = gets.chomp
  if answer == "x"
    puts "The number was #{random_number}."
    break
  end



# command = ''
#
# while command != 'bye'
#   command = gets.chomp
#   puts command
# end
#
# puts 'Come again soon!'
