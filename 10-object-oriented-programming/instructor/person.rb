class Person

  # Ruby automatically calls this method
  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name

    @awake = true

    @tail = false
  end

  # Reader (Getter)
  def first_name
    @first_name
  end

  # Reader (Getter)
  def last_name
    @last_name
  end

  # Writer (Setter)
  def first_name=(first_name)
    @first_name = first_name
  end

  # Writer (Setter)
  def last_name=(last_name)
    @last_name = last_name
  end

  # Normal Instance Method
  def full_name
    "#{ @first_name } #{ @last_name }"
  end

  def greetings
    if @awake
      "Hi, my name is #{ full_name }"
    else
      'ZzZzzzzz'
    end
  end

  def sleep
    @awake = false
  end

  def wake
    @awake = true
  end

  def mutate
    @tail = true
  end

end
