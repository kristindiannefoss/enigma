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
    assert_equal "aaaa", decrypto.decrypt("aaaa","12345",(Date.today))
  end

  # def test_it_can_use_a_defined_cipher_hash_with_a_defined_key
  #   decrypto = Decryptor.new
  #   assert_equal "Expecto Patronum Unicorn conjures an incarnation of the casters innermost positive feelings, such as joy or hope, known as a Patronus ..end..",
  #    decrypto.decrypt("zppqxloj 5t39fuysmnuxgrzs7oz4mrqa2azsanovjnmbaozsgfjb,ejx5s5zjsj3fnq,eo4b2p0aatud9 rz9lu8.slskuo22a4sbo sgrj2gpqu2kz9onjvk msha5,gn6a2.kzfdkt", "12345", Date.today)
  # end

  # def test_the_resulting_message_from_the_doer_is_a_string
  #   decrypto = Decryptor.new
  #
  #   assert_equal "hello world", decrypto.decrypt("z. 5z7rq", "12345", Date.today)
  #   assert_equal String, message.class
  # end
end
