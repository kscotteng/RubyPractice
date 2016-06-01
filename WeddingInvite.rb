# This program will output formal wedding invitation wording
system "clear"
puts "What year will you be getting married?"
year = gets.chomp.to_i

puts "What month will you be getting married?"
month = gets.chomp

puts "What day of the month will you be getting married?"
day = gets.chomp.to_i

def weddingDay(day)

  numString = ''

  days = ['first', 'second', 'third', 'fourth', 'fifth', 'sixth', 'seventh', 'eighth', 'ninth', 'tenth', 'eleventh', 'twelfth', 'thirteenth', 'fourteenth', 'fifteenth', 'sixteenth', 'seventeenth', 'eighteenth', 'nineteenth', 'twentieth', 'twenty-first', 'twenty-second', 'twenty-third', 'twenty-fourth', 'twenty-fifth', 'twenty-sixth', 'twenty-seventh', 'twenty-eighth', 'twenty-ninth', 'thirtieth', 'thirty-first']

  numString = numString + days[day-1]

  numString

end

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

system "clear"
# puts weddingYear(year)
# puts month
# puts weddingDay(day)
puts month + ' ' + weddingDay(day) + ', ' + weddingYear(year)
puts ''
puts ''
