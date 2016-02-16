gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require '../lib/date_offset_generator'

class DateOffsetTest < Minitest::Test

  def test_a_new_instance_of_the_DateOffset_class_can_be_created
    generator = DateOffsetGenerator.new#(2016-02-15)
    assert_equal DateOffsetGenerator, generator.class
  end

  def test_the_last_four_digits_of_a_formatted_date_squared_are_returned
    Time.new
    g = DateOffsetGenerator.new#(2016-02-15)
    assert_equal ["6", "6", "5", "6"], g.format_date(Date.today)
    # (Date.today)
  end

  # def test it can generate the date
  # end
  #
  # def
  #
  # end
  #
  # def
  #
  # end
end
