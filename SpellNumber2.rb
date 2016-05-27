# this program will take an integer from 0 - 10000 and spell it out

def spellNumber (number)

  # number has to be at least zero and can not be greater than 10000
  if number < 0 || number >= 10000
    return 'Please enter a number between 0 and 10000'
  end

  # creates an empty string
  numString = ''

  ones = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
  tens = ['ten', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']
  teens = ['eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']

  # 'remaining' is the remainder of the number to be converted to a string
  remaining = number

  # here, we are determining how many thousands remain to be converted to a string
  # 'spell' is the portion of the number currently being converted to a string
  # (if number = 1000, spell = 1; if number = 999, spell = 0)
  spell = remaining / 1000

  # here, we are subracting the thousands previously mentioned
  # 'remaining' will now be the whole number remaining to convert
  # (if number = 640, spell = 0, remaining = 640)
  # (if number = 1220, spell = 1, remaining = 220)
  remaining = remaining - spell * 1000

  # if number is >=1000
  if spell > 0

    # recursion for 1000 place
    thousands = spellNumber(spell)
    numString = numString + thousands + ' thousand'

    # this will add a space if needed
    if remaining > 0
      numString = numString + ' '
    end
  end

  # this will determine if the number is >=100
  spell = remaining / 100
  remaining = remaining - spell * 100

  # if number is >=100
  if spell > 0

    # recursion for 100 place
    hundreds = spellNumber(spell)
    numString = numString + hundreds + ' hundred'

    # this will add a space if needed
    if remaining > 0
      numString = numString + ' '
    end
  end

  # this will determine if the number is >=10
  spell = remaining / 10
  remaining = remaining - spell * 10

  # if number is >=10
  if spell > 0

    # if number is in the teens
    if spell == 1 && remaining > 0
      # spelling number in teens place
      numString = numString + teens[remaining -1]
      # resetting remaining to zero, if teens are output
      remaining = 0
    else
      # spelling number in the tens place
      numString = numString + tens[spell -1]
    end

    if remaining > 0
      # placing '-' between tens and ones
      numString = numString + '-'
    end
  end

  # moving remainig ones to spell
  spell = remaining
  # zeroing remaining variable
  remaining = 0

  if spell > 0
    # spelling number in ones place
    numString = numString + ones[spell -1]
  end

  if numString == ''
    return 'zero'
  end

  numString
end
