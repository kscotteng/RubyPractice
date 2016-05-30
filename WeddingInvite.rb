# This program will output formal wedding invitation wording

puts "What year will you be getting married?"
year = gets.chomp.to_i

def weddingYear(year)

  if year < 2016 || year > 9999
    return 'Please enter a year 2016 or later'
  end

  numString = ''

  ones = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
  tens = ['tens', 'twenty', 'thirty', 'fourty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']
  teens = ['eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']

  remaining = year
  spell = remaining / 1000
  remaining = remaining - spell * 1000

  if spell > 0
    thousands = weddingYear(spell)
    numString = numString + thousands + ' thousand'
    if remaining > 0
      numString = numString + ' '
    end
  end

  spell = remaining / 100
  remaining = remaining - spell * 100

  if spell > 0
    hundreds = weddingYear(spell)
    numString = numString + hundreds + ' hundred'
    if remaining > 0
      numString = numString + ' '
    end
  end
  
