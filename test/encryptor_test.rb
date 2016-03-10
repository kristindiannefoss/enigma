gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require 'date'
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
      assert_equal "2a 529rq", generator.encrypt("HI THERE", "12345", Date.new(2016, 02, 17))
  end
  def test_it_can_use_a_defined_cipher_hash_with_a_defined_key
    generator = Encryptor.new
      assert_equal "s3am", generator.encrypt("aaaa", "12345", Date.new(2016, 02, 17))
  end

  def test_it_can_use_a_defined_cipher_hash_with_a_defined_key
   generator = Encryptor.new
     assert_equal "b,i4sasjag 4z7rqb2.kzfdkt", generator.encrypt("this is so secret ..end..", "12345", Date.new(2016, 02, 17))
   end

   def test_it_can_use_a_defined_cipher_hash_with_a_defined_key_to_encrypt_numbers_and_symbols
    generator = Encryptor.new
    assert_equal "32l0d9 4cfst3fes5npssjt3ezy3.", generator.encrypt("I love sunshine! and *s ..end..", "12345", Date.today)
  end

  def test_it_can_use_a_defined_cipher_hash_with_a_defined_key_to_encrypt_numbers_and_symbols
   generator = Encryptor.new
   assert_equal "zppqxloj 5t39fuysmnuxgrzs7oz4mrqa2azsanovjnmbaozsgfjb,ejx5s5zjsj3fnq,eo4b2p0aatud9 rz9lu8.slskuo22a4sbo sgrj2gpqu2kz9onjvk msha5,gn6a2.kzfdkt", generator.encrypt("Expecto Patronum Unicorn conjures an incarnation of the casters innermost positive feelings, such as joy or hope, known as a Patronus ..end..", "12345", Date.today)
 end

end
