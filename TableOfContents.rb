# Create a Table of Contents
# 'Table of Contents' should be displayed top/center
# Chapter #/info should be listed on left
# Page #'s should be listed on the right

puts
lineWidth = 50
ch1 = 'Chapter 1:  Numbers'
ch2 = 'Chapter 2:  Letters'
ch3 = 'Chapter 3:  Variables'
ch1_pgs = 'page 1'
ch2_pgs = 'page 72'
ch3_pgs = 'page 118'
puts('Table of Contents'.center(lineWidth))
puts
puts ch1.ljust(lineWidth/2) + ch1_pgs.rjust(lineWidth/2)
puts ch2.ljust(lineWidth/2) + ch2_pgs.rjust(lineWidth/2)
puts ch3.ljust(lineWidth/2) + ch3_pgs.rjust(lineWidth/2)
