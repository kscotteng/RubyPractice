# This are simple examples to show that Operators are in fact Methods

system "clear"

puts 10 + 15
puts 10.+(15)

puts 20 - 5
puts 20.-(5)

puts 10 * 2
puts 10.*(2)

puts 20 / 2
puts 20./(2)

puts 2 ** 3
puts 2.**(3)

# the '=' is an actual operator, we are assigning a variable in this case
# this is not a method on an object, because a variable is not an object
array1 = [1,2,3]
puts array1.inspect
array2 = [1,2,3]
puts array2.inspect

array1 << 4
puts array1.inspect
array2.<<(4)
puts array2.inspect

puts array1[2]
puts array2.[](2)

array1[2] = 'x'
puts array1.inspect
array2.[]=(2,'x')
puts array2.inspect
