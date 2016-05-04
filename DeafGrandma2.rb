input = ''
data_set = []
puts ''
puts 'HELLO SONNY!'
puts ''

while input = gets.chomp
  if input == 'BYE'
    data_set << input
    if data_set == ['BYE', 'BYE', 'BYE']
      puts ''
      puts '...BYE SONNY...'
      puts ''
      break
    end
    puts ''
    puts 'WHAT!? I COULDN\'T HEAR YOU!'
    puts ''
  elsif input != input.upcase
    data_set.clear
    puts ''
    puts 'HUH?! SPEAK UP, SONNY!'
    puts ''
  elsif
    data_set.clear
    puts ''
    puts 'NO, NOT SINCE ' + (rand(1930..1950)).to_s + '!'
    puts ''
  end
end


#change: while input != 'BYE' to: while array 'bye' != ['BYE', 'BYE', 'BYE']
#if input = 'BYE' then shovel into array 'bye'
#if input != 'BYE' then empty array 'bye'
#if array 'bye' = ['BYE', 'BYE', 'BYE'] then end; else continue
