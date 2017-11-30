require 'minitest/autorun'
require 'minitest/pride'
require_relative 'temperature.rb'

class TestTemperature < MiniTest::Test
   # tests go in here

   def test_f_to_c
     # arrange
     f_temp = 50

     # act
     c_temp_result = f_to_c(f_temp)

     # assert
     expected = 10
     assert_equal(expected, c_temp_result)
   end

   def test_f_to_c_negative
     f_temp = -4

     result = f_to_c(f_temp)

     expected = -20
     assert_equal(expected, result)
   end

   def test_c_to_f_positive
     c_temp = 10

     result = c_to_f(c_temp)

     expected = 50
     assert_equal(expected, result)
   end

   def test_c_to_f_negative
     c_temp = -20

     result = c_to_f(c_temp)

     expected = -4
     assert_equal(expected, result)
   end
end
