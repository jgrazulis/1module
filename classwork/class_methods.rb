class Dog

  def initialize
  end

  def self.name
    puts "I'm a class method"
  end

  def name
    puts "I'm an instance method"
  end

  random_variable = Dog.new
  Dog.name 
end
