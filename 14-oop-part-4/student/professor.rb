require_relative 'person'


class Professor < Person

  def initialize(first_name,last_name,field)
    super(first_name,last_name)
    @field = field
  end

  ## READERS

  def field
    @field
  end

  def teach(students)
    students.each do |student|
      student.learn
    end
  end

  def full_name
    "Professor #{super}"
  end
end
