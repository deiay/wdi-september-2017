one_to_hundred = (1..100).to_a
class FalseClass; def to_i; 0 end end
class TrueClass; def to_i; 1 end end

one_to_hundred.each { |num| puts num.to_s + ' ' + 'Fizz' * (num % 3 == 0).to_i + 'Buzz' * (num % 5 == 0).to_i}
