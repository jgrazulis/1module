require 'rspec'
require './lib/unicorn'

describe Unicorn do # organization
  describe '#initialize' do # organization
it 'creates an instance of Unicorn' do # is an actual test
  unicorn = Unicorn.new("Bob")
  expect(unicorn).to be_a Unicorn
  end

  it 'will always pass' do

    end
  end
end

describe '#say hello' do
  describe 'outcome 1'
end
