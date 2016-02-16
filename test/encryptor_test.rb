gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require '../lib/encryptor'
require '../lib/key_generator'

class EncryptorTest < Minitest::Test

  def test_an_instance_of_Encryptor_can_be_created
    # date = Date.today
    generator = Encryptor.new
    assert_equal Encryptor, generator.class
  end

  def test_it_can_use_a_defined_cipher_hash
    generator = Encryptor.new
    assert_equal "i", generator.encrypt("h", 1)
  end

  def test_it_can_still_encrypt_an_uppercase_letter_intake
    generator = Encryptor.new
    assert_equal "i", generator.encrypt("H", 1)
  end

  def test_it_can_encrypt_a_word_intake
    generator = Encryptor.new
    assert_equal 'ij', generator.encrypt('Hi', 1)
  end

end
# This works when rotation is passed in by digit:
#   def test_an_instance_of_Encryptor_can_be_created
#     date = Date.today
#     generator = Encryptor.new("h", 1 , Date.today)
#     assert_equal Encryptor, generator.class
#   end
#
#   def test_it_can_use_a_defined_cipher_hash
#     generator = Encryptor.new("h", 1 , Date.today)
#     assert_equal "i", generator.encrypt
#   end
#
#   def test_it_can_still_encrypt_an_uppercase_letter_intake
#     generator = Encryptor.new("H", 1 , Date.today)
#     assert_equal "i", generator.encrypt
#   end
#
#   def test_it_can_encrypt_a_word_intake
#     generator = Encryptor.new('Hi', 1 , Date.today)
#     assert_equal 'ij', generator.encrypt
#   end
#
# end
