puts ''
puts 'Please enter a starting year:'
starting_year = gets.chomp
puts ''
puts 'Please enter an ending year:'
ending_year = gets.chomp
puts ''

year_range = ending_year.downto(starting_year).to_a



# Defininig leap years:
# any year that is evenly divisible by 4 is a leap year
# a year that is evenly divisble by both 100 & 400
# END
