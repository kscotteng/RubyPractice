puts ''
puts 'Please enter a starting year:'
starting_year = gets.chomp
puts ''
puts 'Please enter an ending year:'
ending_year = gets.chomp
puts ''

leap_year1 = [*starting_year..ending_year].delete_if { |y| y % 4 != 0 }
puts leap_year1



# .delete_if { |y| y % 4 != 0 }

# Defininig leap years:
# any year that is evenly divisible by 4 is a leap year
# a year that is evenly divisble by both 100 & 400
# a year that is evenly divisible only by 100 is NOT a leap year
# END
