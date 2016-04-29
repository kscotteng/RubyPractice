input = ''
puts ''
puts 'HELLO SONNY!'
puts ''

while input = gets.chomp
  if input == 'BYE'
    puts ''
    puts '...Door Slams...'
    puts ''
    break
  elsif input != input.upcase
    puts ''
    puts 'HUH?! SPEAK UP, SONNY!'
    puts ''
  else
    puts ''
    puts 'NO, NOT SINCE ' + (rand(1930..1950)).to_s + '!'
    puts ''
  end
end
