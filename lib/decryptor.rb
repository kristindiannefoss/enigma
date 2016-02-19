require 'pry'
require_relative '../lib/key_generator'
require_relative '../lib/date_offset_generator'

class Decryptor
  attr_accessor :date, :key

  def initialize(key=nil,date=nil)
    @date = DateOffsetGenerator.new.formatted_date
    @key = KeyGenerator.new(key).key
    print "%s: @key = %s\n" % [__FILE__,@key]

    a = (@key[0] + @key[1]).to_s
    a_ro = a.to_i + @date[0].to_i
    b = (@key[1] + @key[2]).to_s
    b_ro = b.to_i + @date[1].to_i
    c = (@key[2] + @key[3]).to_s
    c_ro = c.to_i + @date[2].to_i
    d = (@key[3] + @key[4]).to_i
    d_ro = d.to_i + @date[3].to_i

    print "decryptor.rb: a=%s,b=%s,c=%s,d=%s\n" % [a,b,c,d]
    @rotation = [a_ro, b_ro, c_ro, d_ro]
    print "decryptor.rb: rotation = "
    p @rotation
    puts caller
  end

  def cipher(rotation)
    characters = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", " ", ".", ","]
    rotated_characters = characters.reverse.rotate(rotation)
    Hash[characters.zip(rotated_characters)]
  end

  def decrypt_letter(message, rotation)
    cipher_for_rotation = cipher(rotation)
    binding.pry
    cipher_for_rotation[message.downcase]
  end

  def decrypt (message, key, date = DateOffsetGenerator.formatted_date)
    doer(message, @rotation)
  end

  def doer(message, rotation)
    index = 0
    result = []
    message.each_char do |char|
      result << decrypt_letter(char, @rotation[index])
      index += 1
      index = 0 if index > 3
      end
      result.join
  end
end
