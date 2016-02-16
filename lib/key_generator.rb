require 'pry'  # => true

class KeyGenerator < Random  # => Random

  def initialize

  end             # => :initialize

  def random_number
    Random.rand(10000..99999)
  end

  # def random_number
  #   number = Random.rand(10000..99999)
  #   key = number.to_s
  # end                                   # => :random_number
  #
  # def use_keys
  #   key = self.random_number
  #   a_rotation = key[0,1]
  #   a = a_rotation.to_i
  #   b_rotation = key[1,2]
  #   b = b_rotation.to_i
  #   c_rotation = key[2,3]
  #   c = c_rotation.to_i
  #   d_rotation = key[3,4]
  #   d = d_rotation.to_i
  # end                      # => :use_keys
end                        # => :use_keys

# k = KeyGenerator.new  # => #<KeyGenerator:0x007f930b967260>

# def random_number
#   number = Random.rand(10000..99999)
#   number.to_s
#   number.to_i
# end
# key = KeyGenerator.new

# def random_number
#   number = Random.rand(10000..99999)
#   key = number.to_s
# end
#
# def generate_rotations
#   binding.pry
#   a_rotation = key[0,1]
# end
