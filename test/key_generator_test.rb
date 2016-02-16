gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require '../lib/key_generator'


class KeyGeneratorTest < Minitest::Test

  def test_an_instance_of_KeyGenerator_can_be_created
    generator = KeyGenerator.new
    assert_equal KeyGenerator, generator.class
  end

  # def test_it_can_generate_a_random_numbers
  #   generator = KeyGenerator.new
  #   assert_equal 5, generator.random_number.length
  # end

  def test_it_can_generate_a_string_of_five_numbers
    skip
    generator = KeyGenerator.new
    new_key = generator.random_number
    assert_equal 5, new_key.length
    assert_equal String, new_key.class
  end

  def test_it_can_generate_five_random_numbers
    skip
  end
end
