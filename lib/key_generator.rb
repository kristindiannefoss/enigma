require 'pry'

class KeyGenerator

  attr_reader :key

  def initialize(input)
    if input.nil?
    @key = create_new_key
    else
    @key = input
    end
  end

  def create_new_key
    Random.rand(10000..99999).to_s
  end
end
