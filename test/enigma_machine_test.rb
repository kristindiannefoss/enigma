gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require '../lib/enigma_machine'


class EnigmaMachineTest < Minitest::Test

  def test_an_instance_of_enigma_machine_can_be_created
    machine = EnigmaMachine.new
    assert_equal EnigmaMachine, machine.class
  end

end
