
require './lib/course'
require './lib/student'
require './lib/term'

describe 'Term class' do
  it 'exists' do
  calculus = Course.new("Calculus", 2)
  term = Term.new("Winter 2018", [calculus])

  expect(term).to be_an_instance_of(Term)
  end

  it 'has attributes' do
    calculus = Course.new("Calculus", 2)
    term = Term.new("Winter 2018", [calculus])
    expect(term.name).to eq("Winter 2018")
    expect(term.courses).to eq([calculus])
  end
end

describe 'courses in term' do
  it 'lists open courses' do
    calculus = Course.new("Calculus", 2)
    coding_101 = Course.new("coding_101", 3)
    term = Term.new("Winter 2018", [calculus, coding_101])
    student1 = Student.new({name: "Morgan", age: 21})
    student2 = Student.new({name: "Jordan", age: 29})
    calculus.enroll(student1)
    calculus.enroll(student2)

    expect(term.open_courses).to eq([coding_101])
  end

  it 'has a list of students' do
    student1 = Student.new({name: "Morgan", age: 21})
    student2 = Student.new({name: "Jordan", age: 29})
    calculus = Course.new("Calculus", 2)
    coding_101 = Course.new("coding_101", 3)
    term = Term.new("Winter 2018", [calculus, coding_101])
    calculus.enroll(student1)
    calculus.enroll(student2)


    expect(term.students).to eq([student1, student2])
  end
end
