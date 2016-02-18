require 'pry'
require_relative '../lib/key_generator'
require_relative '../lib/date_offset_generator'

class Decryptor
  attr_accessor :date

  def initialize
    key = "12345"
    @date = DateOffsetGenerator.new.formatted_date

    a = (key[0] + key[1]).to_s
    a_ro = a.to_i + date[0].to_i
    b = (key[1] + key[2]).to_s
    b_ro = b.to_i + date[1].to_i
    c = (key[2] + key[3]).to_s
    c_ro = c.to_i + date[2].to_i
    d = (key[3] + key[4]).to_i
    d_ro = d.to_i + date[3].to_i

    @rotation = [a_ro, b_ro, c_ro, d_ro]
  end

  def cipher(rotation)
    characters = [",", ".", " ", "9", "8", "7", "6", "5", "4", "3", "2", "1", "0", "z", "y", "x", "w", "v", "u", "t", "s", "r", "q", "p", "o", "n", "m", "l", "k", "j", "i", "h", "g", "f", "e", "d", "c", "b", "a"]
    # binding.pry
    rotated_characters = characters.rotate(rotation)
    Hash[characters.zip(rotated_characters)]
  end

  def decrypt_letter(message, rotation)
    cipher_for_rotation = cipher(rotation)
    cipher_for_rotation[message.downcase]
  end

  def decrypt (message, key, date = DateOffsetGenerator.formatted_date)

# (message, key = KeyGenerator.random_number, date = DateOffsetGenerator.formatted_date)
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
