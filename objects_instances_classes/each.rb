Learning Goals

# How to use #each to iterate over an array
# Transform, create a subset, and create something new with #each

# Vocabulary

# - Collection: an Array or a Hash
# - Iteration: a single pass over an element
# - Block: everything between the 'do' and 'end' which runs for each element in the array
# - Block Variable: is the variable between the pipes and for each Iteration
# the variable will contain the current element that we are iterating over

# Warm up

# students = ["Megan", "Bob", "Mike"]
# puts students[0]
# puts students[1]
# puts students[2]

# what do you notice?
# What issues could potentially arise?

# Using  the .each method to iterate over a collection:

# collection.each do |block_variable|
#   # Code here runs for each element
#   # the current element's value is stored in the block_variable variable
# end

# Breakout Room Practice (5 minutes)

# students = ["Megan", "Bob", "Mike"]
#
# students.each do |student|
#   puts student
# end

# What is our collection in the above example?
# What is our Block Variable in the above example?
# What name will be our return value the first iteration through?

# ** IMPORTANT THING TO REMEMEBER: **
 # each returns the original array.

# When to use #each (some examples)
# - to transform elements within a Collection
# - to transform the collection into a new collection
# - to locate specific elements from a collection
# - to create something new with some or all fo the elements in a collection

## Transform elements within a Collection

# names = ['mike', 'bob', 'megan']
# #
# names.each do |name|
#   name.capitalize
# end
# #
# p names

# We want our names array to be returned as ['Mike', 'Bob', 'Megan']
# As it is written above, will our return value for names be capitalized?
# Why does or doesn't it?

# names = ['mike', 'bob', 'megan']
#
# capitalized_names = []
#
# names.each do |name|
#   capitalized_name.push(name.capitalize)
# end
#
# p capitalized_names

# Remember #each gives us access to every element but doesn't change the original array.
# If we want to save our transformed information, we need to create an accumulator.

## Subset of a Collection

# numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
#
# odd_numbers = []
#
# numbers.each do |number|
#   if number.odd?
#     odd_numbers << number
#   end
# end
#
# p odd_numbers

# What will the above example return to us?
# What is our Collection in this example?
# What is our accumulator in this example?
# What is our block checking for?

## Creating Something New

# numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
#
# total = 0
#
# numbers.each do |number|
#   total += number
# end
#
# puts total

# What is total doing here?
# What is our block doing with our block variable?
# What is our return value?

## Using Single-Line syntax
# We can replace the do and end with curly braces {}

# students = ["Megan", "Bob", "Mike"]
# students.each { |student| puts student }

# The best use can for single-line syntax is when the block is VERY short.
# It is important to remember that while you may know what your code is doing,
# it is super important to write your code so that it is readable to others.
