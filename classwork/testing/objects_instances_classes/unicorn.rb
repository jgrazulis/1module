class Unicorn # UpperCamelCase - Constant
#  attr_reader :name #read the attribute out ## need to know
#  attr_writer :name # write the attribute

  attr_accessor :name #combo of both

  def initialize(name_arg)
    # Special method
    # Run once as soon as .new is called
    # Can only be run once
    # Most commonly used to set up attributes in
    #    instance variables
    @name = name_arg # create an Instance Variable (IVar)
  end

  def say_hello
    puts "Hello my name is #{@name}"
  end

  # def name # Long hand form of the attr_reader
  # @name_arg
  # end
end
