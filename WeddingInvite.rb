# This program will output formal wedding invitation wording

puts "What year will you be getting married?"
year = gets.chomp.to_i

def weddingYear(year)

  if year < 0 || year > 9999
    return 'Please enter a valid year'
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

  spell = remaining / 10
  remaining = remaining - spell * 10
  if spell > 0
    if spell == 1 && remaining > 0
      numString = numString + teens[remaining - 1]
      remaining = 0
    else
      numString = numString + tens[spell - 1]
    end
    if remaining > 0
      numString = numString + '-'
    end
  end

  spell = remaining
  remaining = 0
  if spell > 0
    numString = numString + ones[spell - 1]
  end

  numString
end

puts weddingYear(year)
