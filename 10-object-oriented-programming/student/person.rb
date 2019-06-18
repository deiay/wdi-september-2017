class Person

  def initialize(first_name,last_name)
    @first_name = first_name
    @last_name = last_name

    @awake = true
    @tail = false
  end

# READER (GETTER)
  def first_name
    return @first_name
  end

  def last_name
    return @last_name
  end

  def full_name
    "#{@first_name} #{@last_name}"
  end

  def change_first_name(new_first_name)
    @first_name = new_first_name
  end

  def first_name=(first_name)
    @first_name = first_name
  end

  def sleep
    @awake = false
  end

  def wake
    @awake = true
  end

  def greetings
    if @awake
      "Hi, my name is #{full_name}"
    else 'zzZZZzzz'
    end
  end

  def mutate
    @tail = true
  end
end
