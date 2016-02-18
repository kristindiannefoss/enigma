gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require '../lib/enigma'


class EnigmaTest < Minitest::Test

  def test_an_instance_of_enigma_machine_can_be_created
    e = Enigma.new
    assert_equal Enigma, e.class
  end

  def test_a_key_can_be_generated
    e = Enigma.new
    secret_key = e.new_key.to_s
    assert_equal 5, secret_key.length
  end

  def test_the_resulting_message_from_the_encrypter_is_a_string
    machine = Enigma.new
    assert_equal "z. 5z7rq", machine.encrypt("hi there", "12345", Date.new(2016, 02, 17))
  end

  def   test_it_can_find_the_key_used_in_the_encrypted_message_and_crack_it
    machine = Enigma.new
    assert_equal "this is so secret ..end..", machine.crack(". i4p.sj e 4w5rq.0.kwddkq", Date.new(2016, 02, 17))
  end

end
