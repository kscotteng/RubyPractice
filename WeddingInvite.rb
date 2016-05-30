# This program will output formal wedding invitation wording

puts "What year will you be getting married?"
year = gets.chomp.to_i

def weddingYear(year)

  if year < 2016 || number > 9999
    return 'Please enter a year 2016 or later'
  end

  numString = ''

  ones = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
  tens = ['tens', 'twenty', 'thirty', 'fourty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']
  teens = ['eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']

  
