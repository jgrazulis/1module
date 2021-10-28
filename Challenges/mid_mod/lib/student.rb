class Student

  attr_reader :name, :age, :scores

  def initialize(name: 'name', age: 'age')
    @name = name
    @age = age
    @scores = []
  end

  def log_score(score)
    @scores << score
  end

  def grade
    (@scores.sum)/(@scores.length)
    # require "pry"; binding.pry
  end
end
