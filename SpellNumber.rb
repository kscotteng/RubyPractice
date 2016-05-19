# this program will take a number from 0 - 100 and spell it out

def spellNumber (number)
  if number < 0
    puts 'Please enter a number greater than 0'
  elsif number > 100
    puts 'Please enter a number less than 100'
  elsif
    puts number
  end
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
