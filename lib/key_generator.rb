require 'pry'

class KeyGenerator

  def self.random_number
    Random.rand(10000..99999).to_s
  end
end
key = KeyGenerator.random_number
