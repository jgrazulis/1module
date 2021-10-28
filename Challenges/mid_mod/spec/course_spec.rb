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
    require "pry"; binding.pry
    expect(course.full?).to eq(false)
    end
  end
end
