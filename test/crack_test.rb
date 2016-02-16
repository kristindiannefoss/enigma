gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require '../lib/encryptor'
require '../lib/key_generator'

class CrackTest < Minitest::Test

  def test_an_instance_of_Encryptor_can_be_created
    # date = Date.today
    c = Crack.new
    assert_equal Crack, c.class
  end
end
