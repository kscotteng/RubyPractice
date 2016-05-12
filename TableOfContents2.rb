# Rewrite your Table of Contents program.
# Start the program with an array holding all of the information for your Table of Contents (chapter names, page numbers, etc.).
# Then print out the information from the array in a formatted Table of Contents.

# create info array with all information out of order
info = ['Chapter 3:  Variables', 'page 1', 'Chapter 1:  Numbers','page 118', 'Chapter 2:  Letters', 'page 72']

# create sorted_info array and sort
sorted_info = []
  while info.length > 0
  sorted_info << info.delete(info.min)
  end
puts sorted_info
