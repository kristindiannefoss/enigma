require 'pry'

class KeyGenerator

#   def self.random_number
#     Random.rand(10000..99999).to_s
#   end
# end
# key = KeyGenerator.random_number

attr_reader :key

def initialize(input = nil)
  print "%s: input = %s\n" % [__FILE__,input]
  if input.nil?
    @key = create_new_key
  else
    @key = "%05d" % input
  end
  print "%s: @key = %s\n" % [__FILE__,@key]
end

  def create_new_key
    "%05d" % Random.new.rand(99999)
  end
end
