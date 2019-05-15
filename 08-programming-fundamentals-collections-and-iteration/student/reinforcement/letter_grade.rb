def grade(percentage)
  legend = {0=>'F', 50=>'D-',55=>'D',58=>'D+',60=>'C-',65=>'C',68=>'C+',70=>'B-',75=>'B',78=>'B+',80=>'A-',85=>'A',90=>'A+'}
  thresholds = legend.select {|percent,letter| percentage >= percent}
  thresholds.max[1]
end

puts "what was your percentage grade?"
my_grade = gets.to_i
letter_grade = grade(my_grade)
puts "Your letter grade is #{letter_grade}"
