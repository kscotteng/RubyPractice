# this program will take a number from 0 - 1000 and spell it out

def spellNumber (number)
  # number has to be at least zero
  if number < 0
    puts 'Please enter a number greater than 0'
  # can not be greater than 1000
  elsif number > 1000
    puts 'Please enter a number less than 1000'
  # elsif
  #   puts number
  end
end
