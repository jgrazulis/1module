require './lib/student'

describe 'student class' do
  it 'exists' do
    student = Student.new({name: "Morgan", age: 21})

    expect(student).to be_a(Student)
  end

  it 'has attributes' do
    student = Student.new({name: "Morgan", age: 21})

    expect(student.name).to eq("Morgan")
    expect(student.age).to eq(21)
    expect(student.scores).to eq([])
  end

describe 'scores' do
  it 'can log a score' do
    student = Student.new({name: "Morgan", age: 21})
    student.log_score(89)
    student.log_score(78)

    expect(student.scores).to eq([89, 78])
  end

  it 'can average scores' do
    student = Student.new({name: "Morgan", age: 21})
    student.log_score(89)
    student.log_score(78)
    # student.grade

    expect(student.grade).to eq(83) # should be 83.5?
  end
end
end
