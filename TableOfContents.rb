# Create a Table of Contents
# 'Table of Contents' should be displayed top/center
# Chapter #/info should be listed on left
# Page #'s should be listed on the right

puts
lineWidth = 50
ch1 = '1:  Numbers'
ch2 = '2:  Letters'
ch3 = '3:  Variables'
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
puts
