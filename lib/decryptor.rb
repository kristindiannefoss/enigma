require 'pry'
require_relative '../lib/key_generator'
require_relative '../lib/date_offset_generator'

require 'pry'
require_relative '../lib/key_generator'
require_relative '../lib/date_offset_generator'
require_relative '../lib/chars'
require_relative '../lib/rotation'

class Decryptor
  include Characters, Rotation
  attr_accessor :date, :key, :rotation

  def initialize
    @date = DateOffsetGenerator.new.formatted_date
    @key = "12345"
      a = (@key[0] + @key[1]).to_s
      a_ro = a.to_i + @date[0].to_i
      b = (@key[1] + @key[2]).to_s
      b_ro = b.to_i + @date[1].to_i
      c = (@key[2] + @key[3]).to_s
      c_ro = c.to_i + @date[2].to_i
      d = (@key[3] + @key[4]).to_i
      d_ro = d.to_i + @date[3].to_i

      @rotation = [a_ro, b_ro, c_ro, d_ro]
      # @rotation = rotation
  end

  def cipher(rotation)
    Hash[characters_reversed.zip(characters_reversed.rotate(rotation))]
  end

  def encrypt_letter(message, rotation)
    cipher_for_rotation = cipher(rotation)
    cipher_for_rotation[message.downcase]
  end

  def encrypt (message, key, date)
    @key = key
    doer(message, @rotation)
  end

  def doer(message, rotation)
    index = 0
    result = []
    message.each_char do |char|
      result << encrypt_letter(char, @rotation[index])
      index += 1
      index = 0 if index > 3
        end
      result.join
  end
end

#
# class Decryptor
#   # include Characters
#   attr_accessor :date, :key
#
#   def initialize
#     @date = date_generated(Date.today)
#     @key = "12345"
#
#     a = (@key[0] + @key[1]).to_s
#     a_ro = a.to_i + @date[0].to_i
#     b = (@key[1] + @key[2]).to_s
#     b_ro = b.to_i + @date[1].to_i
#     c = (@key[2] + @key[3]).to_s
#     c_ro = c.to_i + @date[2].to_i
#     d = (@key[3] + @key[4]).to_i
#     d_ro = d.to_i + @date[3].to_i
#
#     @rotation = [a_ro, b_ro, c_ro, d_ro]
#   end
#
#   def cipher(rotation)
#     Hash[characters_reversed.zip(characters_reversed(rotation))]
#   end
#
#   def characters_reversed
#     [",", ".", " ", "9", "8", "7", "6", "5", "4", "3", "2", "1", "0", "z", "y", "x", "w", "v", "u", "t", "s", "r", "q", "p", "o", "n", "m", "l", "k", "j", "i", "h", "g", "f", "e", "d", "c", "b", "a"]
#   end
#
#   def decrypt_letter(message, rotation)
#     cipher_for_rotation = cipher(rotation)
#     cipher_for_rotation[message.downcase]
#   end
#
#   def date_generated(date)
#     @date = DateOffsetGenerator.formatted_date(date)
#   end
#
#   def decrypt (message, key, date)
#     @date = date_generated(date)
#     @key = key
#     doer(message, @rotation)
#   end
#
#   def doer(message, rotation)
#     index = 0
#     result = []
#     message.each_char do |char|
#       result << decrypt_letter(char, @rotation[index])
#       index += 1
#       index = 0 if index > 3
#       # binding.pry
#       end
#       result.join
#   end
# end
