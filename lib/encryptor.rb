require 'pry'
require '../lib/key_generator'
require '../lib/date_offset_generator'
# require '../lib/offset'

class Encryptor (string, rotation, date)
  attr_accessor :date
  def initialize #(string, rotation)
    @date = date
    # @string = string.chars
    gen = KeyGenerator.new
    @key = gen.random_number
    @encrypted_string = []
    @char_encrypt_count = 0
    key = KeyGenerator.new
    date = DateOffsetGenerator.new

    k = key.random_number
    d = date.format_date.chars

    a = (k[0] + k[1]).to_s
    a_ro = a.to_i + d[0].to_i
    b = (k[1] + k[2]).to_s
    b_ro = b.to_i + d[1].to_i
    c = (k[2] + k[3]).to_s
    c_ro = c.to_i + d[2].to_i
    d = (k[3] + k[4]).to_i
    d_ro = d.to_i + d[3].to_i

    ro = [a_ro, b_ro, c_ro, d_ro]
  end

  def cipher(rotation)
    characters = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "0", "1", "2", "3", "4", "5", "6", "7", "8", " ", ".", ","]
    roatated_characters = characters.rotate(rotation)
    Hash[characters.zip(roatated_characters)]
  end

  def encrypt_letter(string, rotation)
    cipher_for_rotation = cipher(rotation)
    cipher_for_rotation[string.downcase]
  end

  def encrypt (string, rotation)
    string.chars.collect do |letter|
    @char_encrypt_count += 1
    if @char_encrypt_count == 0
    encrypt_letter(letter.downcase, rotation = ro[0])
    elsif @char_encrypt_count == 1
    encrypt_letter(letter.downcase, rotation = ro[1])
    elsif @char_encrypt_count == 2
    encrypt_letter(letter.downcase, rotation = ro[2])
    elsif @char_encrypt_count == 3
    encrypt_letter(letter.downcase, rotation = ro[3])
    @char_encrypt_count = 0
    end.join
  end

  def with_keys

  end

end
    #


    # def encrypt(string, rotation)
    #   letters = string.split("")
    #   letters.collect do |letter|
    #   encrypt_letter(letter.downcase, rotation)
    #   end.join
    # end
    #
    # offset = (Date.today).strftime('%d%m%y')
    # k= (offset.to_i) ** 2
    # k.to_s.
    #
    #
    #
    # # generator = Encryptor.new
