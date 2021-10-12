
require './unicorn'

unicorn_1 = Unicorn.new("Brian") # Create an instance of this class
unicorn_2 = Unicorn.new("Sparkles")
unicorn_3 = Unicorn.new("Peggy")

unicorn_1.say_hello
unicorn_2.say_hello
unicorn_3.say_hello

require 'pry'; binding.pry;
