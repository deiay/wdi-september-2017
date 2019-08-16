require_relative 'person'

class Student < Person

  def initialize(first_name,last_name,knowledge=0)
    super(first_name,last_name)
    @knowledge = knowledge
  end


  def learn
    @knowledge +=1
  end

  def slack
    @knowledge -=1 if knowledge > 0
  end

  def knowledge
    @knowledge
  end

end
