numbers = [1,2,3,4,5,6,7,8,9,10,11,12]

numbers.each do |num_a|
  numbers.each do |num_b|
    answer = num_a * num_b
    print "#{num_a} x #{num_b} = #{answer}"
  end
end
