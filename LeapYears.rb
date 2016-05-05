puts ''
puts 'Please enter a starting year:'
starting_year = gets.chomp.to_i
puts ''
puts 'Please enter an ending year:'
ending_year = gets.chomp.to_i
puts ''

leap_years = []
starting_year.upto(ending_year) do |y|
  if (y % 4 == 0)
    leap_years << y unless (y % 100 == 0) && (y % 400 != 0)
  end
end

puts leap_years.join(', ')



# .delete_if { |y| y % 4 != 0 }

# Defininig leap years:
# any year that is evenly divisible by 4 is a leap year
# a year that is evenly divisble by both 100 & 400
# a year that is evenly divisible only by 100 is NOT a leap year
# END
