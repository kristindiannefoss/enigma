gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require '../lib/decryptor'
require '../lib/key_generator'
require '../lib/date_offset_generator'
require '../lib/cracker'

class CrackerTest < Minitest::Test

  def test_an_instance_of_Crack_can_be_created
    nutcracker = Cracker.new
    assert_equal Cracker, nutcracker.class
  end

  def test_it_can_find_the_key_and_decrypt_the_encrypted_message
    nutcracker = Cracker.new
    assert_equal "this is so secret ..end..", nutcracker.crack(". i4p.sj e 4w5rq.0.kwddkq", Date.today)
  end

  # def test_it_can_find_the_key_used_in_the_encrypted_message
  #   nutcracker = Cracker.new
  #   assert_equal "12345", nutcracker.crack(". i4p.sj e 4w5rq.0.kwddkq")
  # end



end
