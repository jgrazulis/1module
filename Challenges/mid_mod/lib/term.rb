class Term

  attr_reader :name, :courses

  def initialize(name, courses)
    @name = name
    @courses = courses
  end


  def open_courses
    @courses.find_all do |course|
      course.full? == false
    end
  end

  

  def students
    @courses

  end
end
