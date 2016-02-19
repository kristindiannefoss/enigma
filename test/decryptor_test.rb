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

  def test_it_can_use_a_defined_cipher_hash_with_a_defined_key
    decrypto = Decryptor.new
    assert_equal "Expecto Patronum Unicorn conjures an incarnation of the casters innermost positive feelings, such as joy or hope, known as a Patronus ..end..",
     decrypto.decrypt("wnpqujoj73t36duypknuuerzc05,u3wi m50izu3rzsji050orpjhqp5a4.7r4p.nzwhm0 j 16ii50lejx7ex0dg4r0s6u  m 0j0d0o3p o1w2 w5ewzp3sjs0pm.hoz,i kq7npq1", "26186", Date.new(2016, 02, 18))
  end

  def test_the_resulting_message_from_the_doer_is_a_string
    decrypto = Decryptor.new
    message = decrypto.decrypt("z. 5z7rq", "12345", Date.new(2016, 02, 17))
    assert message = "hello world"
    assert_equal String, message.class
  end
end
