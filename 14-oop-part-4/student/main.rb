require_relative 'professor'
require_relative 'student'

albert_einstein = Professor.new('Albert','Einstein','Physics')

joe_bloggs = Student.new('Joe','Bloggs')
mary_wong = Student.new('Mary','Wong')
jim_smith = Student.new('Jim','Smith')
john_doe = Student.new('John','Doe')

cohort = []
cohort << mary_wong
cohort << jim_smith
cohort << joe_bloggs
cohort << john_doe


private_lesson = []
private_lesson << jim_smith


4.times {albert_einstein.teach(cohort)}
2.times {albert_einstein.teach(private_lesson)}
1.times {joe_bloggs.slack}

cohort.each do |student|
  p "#{student.first_name}'s knowledge is #{student.knowledge}"
end
