# this program will take a number from 0 - 100 and spell it out

def spellNumber (number)
  # number has to be at least zero
  if number < 0
    puts 'Please enter a number greater than 0'
  # can not be greater than 100
  elsif number > 100
    puts 'Please enter a number less than 100'
  # elsif
  #   puts number
  end


  # spellNumber(-5)
  # spellNumber(110)
  # spellNumber(54)

  # number spelled out and returned as a string
  numString = ''

  # 'remaining' will be the remainder of the number to be converted to a string
  remaining = number

  # 'spell' is the portion of the number currently being converted to a string
  # here, we are determining how many hundreds remain to be converted to a string
  spell = remaining / 100

  # here, we are subracting the hundreds previously mentioned
  remaining = remaining - spell * 100

  # this will determine if the number is 100
  if spell > 0
    return 'one hundred'
  end

  # this will determine how many tens remain to be converted to a string
  spell = remaining / 10

  # subtracting the tens calculated in the last step
  remaining = remaining - spell * 10

  if spell > 0


end
