gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/encryptor'
require_relative '../lib/key_generator'

class EncryptorTest < Minitest::Test
  def test_an_instance_of_Encryptor_can_be_created
    generator = Encryptor.new
    assert_equal Encryptor, generator.class
  end

  def test_it_can_use_a_defined_cipher_hash_with_a_defined_key
    generator = Encryptor.new
    assert_equal "z. 5z7rq", generator.encrypt("hi there", "12345", Date.new(2016, 02, 17))
  end

  def test_the_resulting_message_from_the_doer_is_a_string
    generator = Encryptor.new
    message = generator.encrypt("hi there", "12345", Date.new(2016, 02, 17))
    assert_equal String, message.class
  end

  def test_it_can_still_encrypt_an_uppercase_letter_intake
    generator = Encryptor.new
      assert_equal "z. 5z7rq", generator.encrypt("HI THERE", "12345", Date.new(2016, 02, 17))
  end
  def test_it_can_use_a_defined_cipher_hash_with_a_defined_key
    generator = Encryptor.new
      assert_equal "s3am", generator.encrypt("aaaa", "12345", Date.new(2016, 02, 17))
  end
end #[18, 29, 39, 51]


#[18, 29, 39, 51]

# def test_the_first_letter_is_rotated_by_the_doer_the_desired_amount_of_rotations
#   generator = Encryptor.new
#   assert_equal ["6", "6", "5", "6"],  DateOffsetGenerator.new((Date.new(2016, 02, 17)))
#   #"key "12345", becomes [12, 23, 34, 45] in initialize"
#   #"new total rotation array is [18, 29, 39, 51]"
#   assert_equal "z. 5z7rq", generator.encrypt("hi there", "12345", Date.new(2016, 02, 17))
# end
