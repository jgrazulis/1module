greeting = "Hello World".gsub "World", "Mundo"
# Right to Left
# First right side will execute methods
# return a value
# save the return value to the variable on the left side

class Calculator
  def greeting # defines the method greeting
    puts 'Hello World'
  end

  def add(num_1, num_2)
    num_1 + num_2 # this is the return value because it's the last line of code
  end
end

calc = Calculator.new # created a new Calculator object
# calc.greeting # calls the greeting method on the Calculator object
num = calc.add(23, 1)
puts num
