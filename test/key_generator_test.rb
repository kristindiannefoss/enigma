gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require '../lib/key_generator'


class KeyGeneratorTest < Minitest::Test

  def test_an_instance_of_KeyGenerator_can_be_created
    generator = KeyGenerator.new
    assert_equal KeyGenerator, generator.class
  end

  def test_it_can_generate_random_numbers
    generator = KeyGenerator.random_number
    generator2 = KeyGenerator.random_number
    generator3 = KeyGenerator.random_number
    refute, generator = generator2
    refute, generator2 = generator3
    refute, generator3 = generator
  end

  def test_it_can_generate_a_string_of_five_numbers
    new_key = KeyGenerator.random_number
    assert_equal 5, new_key.length
    assert_equal String, new_key.class
  end
end
