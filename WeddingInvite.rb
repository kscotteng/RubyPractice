# This program will output formal wedding invitation wording
system "clear"

puts "What is the name of the Bride?"
bride = gets.chomp

puts "What is the name of the Groom?"
groom = gets.chomp

puts "What is the name of the Bride's Father?"
father_of_bride = gets.chomp

puts "What is the Month, Day and Year of the wedding?"
puts "(ex: November 3 2007)"
date = gets.chomp
wedding_date = date.split(' ')
year = wedding_date.pop.to_i
day = wedding_date.pop.to_i
month = wedding_date.pop

puts "What day of the week is the wedding?"
day_of_week = gets.chomp

puts "What time is the wedding?"
puts "(enter time on the hour or half-hour - hh:mm)"
time = gets.chomp

puts "What is the name of the ceremony venue?"
ceremony_venue = gets.chomp

puts "City, State of ceremony venue?"
ceremony_location = gets.chomp

puts "What is the name of the reception venue?"
reception_venue = gets.chomp

puts "Address of reception venue?"
reception_location = gets.chomp


def weddingTime(time)

  wedding_time = time.split(':')
  min = wedding_time.pop.to_i
  hour = wedding_time.pop.to_i

  numString = ''

  hours = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine', 'ten', 'eleven', 'twelve']

  if min > 0
    mins = 'half after '
    numString = numString + mins + hours[hour-1]
  else
    numString = numString + hours[hour-1]
  end

  numString

end

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
puts "Mr. & Mrs. " + father_of_bride.center(75)
puts "request the honour of your presence".center(75)
puts "at the marriage of their daughter".center(75)
puts bride.center(75)
puts "to".center(75)
puts "Mr. " + groom.center(75)
puts day_of_week + ', the ' + weddingDay(day) + ' of ' + month.center(75)
puts '[' + weddingYear(year) + ']'.center(75)
puts 'at ' + weddingTime(time) + " o'clock".center(75)
puts ceremony_venue.center(75)
puts ceremony_location.center(75)
puts reception_venue.center(75)
puts reception_location.center(75)
puts ''
puts ''
