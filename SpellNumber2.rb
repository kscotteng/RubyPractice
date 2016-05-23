# this program will take a number from 0 - 1000 and spell it out

def spellNumber (number)
  # number has to be at least zero and can not be greater than 1000
  if number < 0 || number > 1000
    return 'Please enter a number between 0 and 1000'
  end

  # number spelled out and returned as a string
  numString = ''

  # 'remaining' is the remainder of the number to be converted to a string
  remaining = number

  # here, we are determining how many thousands remain to be converted to a string
  # 'spell' is the portion of the number currently being converted to a string
  # (if number = 1000, spell = 1; if number = 999, spell = 0)
  spell = remaining / 1000

  # here, we are subracting the thousands previously mentioned
  # 'remaining' will now be the whole number remaining to convert
  # (if number = 640, spell = 0, remaining = 64)
  # (if number = 1220, spell = 1, remaining = 22)
  remaining = remaining - spell * 1000

  # this will determine if the number is 1000
  if spell > 0
    return 'one thousand'
  end

end
