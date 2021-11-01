require './lib/course'
require './lib/student'

describe 'course class' do
  it 'exists' do
    course = Course.new("Calculus", 2)

    expect(course).to be_an_instance_of(Course)
  end

  it 'has attributes' do
    course = Course.new("Calculus", 2)

    expect(course.name).to eq("Calculus")
    expect(course.capacity).to eq(2)
    expect(course.students).to eq([])
  end
#
describe 'course enrollment' do
  it 'can determine if the course is full' do
    course = Course.new("Calculus", 2)
    course.capacity
    course.students

    expect(course.full?).to eq(false)
  end

    it 'can add students' do
      course = Course.new("Calculus", 2)
      student1 = Student.new({name: "Morgan", age: 21})
      student2 = Student.new({name: "Jordan", age: 29})
      course.enroll(student1)
      course.enroll(student2)

      expect(course.students).to eq([student1, student2])
    end
  end
end
