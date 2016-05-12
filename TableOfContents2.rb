# Rewrite your Table of Contents program.
# Start the program with an array holding all of the information for your Table of Contents (chapter names, page numbers, etc.).
# Then print out the information from the array in a formatted Table of Contents.

# create info array with all information out of order
info = ['3: Variables', '1', '1: Numbers','118', '2: Letters', '72']

# create sorted_info array and sort
info.sort! {|c,v| c <=> v }
puts info

puts
lineWidth = 50
ch1 = '1: Numbers'
ch2 = '2: Letters'
ch3 = '3: Variables'
ch1_pgs = '1'
ch2_pgs = '72'
ch3_pgs = '118'
puts 'Table of Contents'.center(lineWidth)
puts
puts 'Chapter'.ljust(lineWidth/2) + 'Page'.rjust(lineWidth/2)
puts
puts ch1.ljust(lineWidth/2) + ch1_pgs.rjust(lineWidth/2)
puts ch2.ljust(lineWidth/2) + ch2_pgs.rjust(lineWidth/2)
puts ch3.ljust(lineWidth/2) + ch3_pgs.rjust(lineWidth/2)
