# this program will take a number from 0 - 100 and spell it out

def spellNumber(number)

  # number has to be at least zero and can not be greater than 100
  if number < 0 || number > 100
    return 'Please enter a number between 0 and 100'
  end

  # number spelled out and returned as a string
  numString = ''

  ones = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']

  tens = ['ten', 'twenty', 'thirty', 'fourty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']

  teens = ['eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']

  # 'remaining' is the remainder of the number to be converted to a string
  remaining = number

  # here, we are determining how many hundreds remain to be converted to a string
  # 'spell' is the portion of the number currently being converted to a string
  # (if number = 100, spell = 1; if number = 99, spell = 0)
  spell = remaining / 100

  # here, we are subracting the hundreds previously mentioned
  # 'remaining' will now be the whole number remaining to convert
  # (if number = 52, spell = 0, remaining = 52)
  # (if number = 115, spell = 1, remaining = 15)
  remaining = remaining - spell * 100

  # this will determine if the number is 100
  if spell > 0

    #recursion
    # instructing method to call itself with 'spell'
    # 'spell' is currently the number of hundreds
    hundreds = spellNumber(spell)

    # adding the hundreds value to numString
    # adding ' hundred' after the hundreds place
    numString = numString + hundreds + ' hundred'

    if remaining > 0
      # this adds a space between the hundreds place and any remainig values
      # so we don't write one hundredtwenty-two
      numString = numString + ' '
    end
  end

  # this will determine how many tens remain to be converted to a string
  # 'spell' will now be the number of tens
  # (if number = 52, spell = 5)
  spell = remaining / 10

  # subtracting the tens calculated in the last step
  # (if number = 52, remaining = 2)
  remaining = remaining - spell * 10

  # determining if we have a number greater than ten (number is a range ten - ninety nine)
  if spell > 0

    # number is greater than ten but, is a range of ten - nineteen (single output for both tens and ones)
    # this range does not have two outputs like twenty - ninety (one output for tens, one output for ones)
    if spell == 1 && remaining > 0

        # -1 is to locate the correct position in the array for the value entered
        numString = numString + teens[remaining-1]

        # nothing remaining to write out since we just ran through the ten - nineteen range
        # zeroing 'remaining'
        remaining = 0
    else
      numString = numString + tens[spell-1]
    end

    if remaining > 0
      numString = numString + '-'
    end
  end

  # setting remaining ones to 'spell'
  spell = remaining
  # zeroing 'remaining'
  remaining = 0

  if spell > 0
    numString = numString + ones[spell-1]
  end

  if numString == ''
    return 'zero'
  end

  numString
end

# puts spellNumber(-1)
# puts spellNumber(0)
# puts spellNumber(5)
# puts spellNumber(10)
# puts spellNumber(11)
# puts spellNumber(12)
# puts spellNumber(13)
# puts spellNumber(14)
# puts spellNumber(15)
# puts spellNumber(16)
# puts spellNumber(17)
# puts spellNumber(18)
# puts spellNumber(19)
# puts spellNumber(21)
# puts spellNumber(32)
# puts spellNumber(43)
# puts spellNumber(54)
# puts spellNumber(65)
# puts spellNumber(76)
# puts spellNumber(87)
# puts spellNumber(98)
# puts spellNumber(99)
# puts spellNumber(100)
# puts spellNumber(101)
