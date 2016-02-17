gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/decryptor'
require_relative '../lib/key_generator'

class DecryptorTest < Minitest::Test
  def test_an_instance_of_Decryptor_can_be_created
    decrypto = Decryptor.new
    assert_equal Decryptor, decrypto.class
  end

  def test_it_can_use_a_defined_cipher_hash_with_a_defined_key
    decrypto = Decryptor.new
    assert_equal "aaaa", decrypto.decrypt("s3am", "12345", Date.new(2016, 02, 17))
  end
#[18, 29, 39, 51]
  def test_the_resulting_message_from_the_doer_is_a_string
    skip
    decrypto = Decryptor.new
    message = decrypto.decrypt("z. 5z7rq", "12345", Date.new(2016, 02, 17))
    assert_equal String, message.class
  end

  def test_it_can_still_encrypt_an_uppercase_letter_intake
    skip
    decrypto = Decryptor.new
    assert_equal "z. 5z7rq", decrypto.decrypt("z. 5z7rq", "12345", Date.new(2016, 02, 17))
  end
end
