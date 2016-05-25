bottles = 1000000

while bottles > 1
  puts ''
  puts bottles.to_s + ' bottles of beer on the wall,'
  puts bottles.to_s + ' bottles of beer...'
  puts ''
  puts 'Take 1 down, pass it around,'
  bottles = bottles - 1
  if bottles > 1
    puts bottles.to_s + ' bottles of beer on the wall.'
  else
    puts bottles.to_s + ' bottle of beer on the wall.'
    puts ''
    puts bottles.to_s + ' bottle of beer...'
    puts bottles.to_s + ' Take it down...  Pass it around...'
    puts bottles.to_s + ' No more beer you bums!'
    puts ''
  end
end
