students = {
  :cohort1 => 34,
  :cohort2 => 42,
  :cohort3 => 22
}

# students.each do |cohort,students|
#   puts "#{cohort}: #{students} students"
# end

students[:cohort4] = 43

#puts students.keys

#students = students.map {|cohort,size| size = size * 1.05}

#puts students.class


students.delete(:cohort2)

puts students
