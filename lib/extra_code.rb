
def cipher
      {'a' => 'n', 'b' => 'o', 'c' => 'p', 'd' => 'q',
       'e' => 'r', 'f' => 's', 'g' => 't', 'h' => 'u',
       'i' => 'v', 'j' => 'w', 'k' => 'x', 'l' => 'y',
       'm' => 'z', 'n' => 'a', 'o' => 'b', 'p' => 'c',
       'q' => 'd', 'r' => 'e', 's' => 'f', 't' => 'g',
       'u' => 'h', 'v' => 'i', 'w' => 'j', 'x' => 'k',
       'y' => 'l', 'z' => 'm'}
end

def cipher
  ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "_", ".", ","]

      {"a"=>1, "b"=>2, "c"=>3, "d"=>4, "e"=>5, "f"=>6, "g"=>7, "h"=>8, "i"=>9, "k"=>11, "l"=>12, "m"=>13, "n"=>14, "o"=>15, "p"=>16, "q"=>17, "r"=>18, "s"=>19, "t"=>20, "u"=>21, "v"=>22, "w"=>23, "x"=>24, "y"=>25,"z"=>26, "0"=>27, "1"=>28, "2"=>29, "3"=>30, "4"=>31, "5"=>32, "6"=>33, "7"=>34, "8"=>35, "_"=>36, "."=>37, ","=>38 }
end

  def encrypt_letter(letter)
    lowercase_letter = letter.downcase
    cipher[lowercase_letter]
  end

  def encrypt(string)
    letters = string.split("")
    letters.collect do |letter|
    encrypt_letter(letter)
    end.join
  end

end

class EncryptorTest < Minitest::Test

  def test_an_instance_of_KeyGenerator_can_be_created
    generator = Encryptor.new
    assert_equal Encryptor, generator.class
  end

  def test_it_can_use_a_defined_cipher_hash
    generator = Encryptor.new
    assert_equal 'z', generator.encrypt('m')
  end

  def test_it_can_still_encrypt_an_uppercase_letter_intake
    generator = Encryptor.new
    assert_equal 'z', generator.encrypt('M')
  end

  def test_it_can_encrypt_a_word_intake
    generator = Encryptor.new
    assert_equal 'uv', generator.encrypt('Hi')
  end

  class Encryptor
    def initialize
    end

    def cipher(rotation)
      characters = characters = (' '..'z').to_a
      roatated_characters = characters.rotate(rotation)
      Hash[characters.zip(roatated_characters)]
    end

    def encrypt_letter(letter, rotation)
      cipher_for_rotation = cipher(rotation)
      cipher_for_rotation[letter]
    end

    def encrypt(string, rotation)
      letters = string.split("")
      letters.collect do |letter|
      encrypt_letter(letter)
      end.join
    end

  end

  ///////////////////////////////////////////////


  class Encryptor
    def initialize
      # @range = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "_", ".", ","]
      # # @cipher = cipher
    end

    def cipher(rotation)
      characters = characters = (' '..'z').to_a
      roatated_characters = characters.rotate(rotation)
      Hash[characters.zip(roatated_characters)]
    end

    def encrypt_letter(letter, rotation)
      cipher_for_rotation = cipher(rotation)
      cipher_for_rotation[letter]
    end

    def encrypt(string, rotation)
      letters = string.split("")
      letters.collect do |letter|
      encrypt_letter(letter)
      end.join
    end

  end


end

key = KeyGenerator.new

def random_number
  number =num
  num.map{ Random.rand(10000..99999) }
  string = code.to_s
  # string.to_i
end
end

class Encryptor
  def initialize
  end

  def cipher(rotation)
  characters = (" ".."z").to_a
  rotated_characters = characters.rotate(rotation)
  Hash[characters.zip(rotated_characters)]
  end

  def encrypt_letter(letter, rotation)
    cipher_for_rotation = cipher(rotation)
    cipher_for_rotation[letter]
  end

  def encrypt(string, rotation)
    letters = string.split("")

    results = []
    letters.each do |letter|
      encrypted_letter = encrypt_letter(letter)
      results.push(encrypted_letter)
    end
    results.join
  end
end

date = date_input.to_s.split("-").join.to_i

a_rotation = key[0,1]


a = a_rotation.to_i
b_rotation = key[1,2]
b = b_rotation.to_i
c_rotation = key[2,3]
c = c_rotation.to_i
d_rotation = key[3,4]
d = d_rotation.to_i

key = self.random_number
e_rotation = key[0,1]
e = e_rotation.to_i
f_rotation = key[1,2]
f = f_rotation.to_i
g_rotation = key[2,3]
g = g_rotation.to_i
h_rotation = key[3,4]
h = h_rotation.to_i

# #
# generator = DateOffsetGenerator.new(Date.today)
# generator.format_date(Date.today)
#
#
#
# # date_offset = Offset.new
# # date_offset.format_date
#
#
# #
# def format_date(date_input)
#   offset = (date_input).strftime('%d%m%y')
# #   k= (offset.to_i) ** 2
# #   date_squared_array = k.to_s.chars
# #   offsets_array = []
# #   4.times do |i|
# #     i = offsets_array << date_squared_array.pop
# #   end
# # end
# # end
# #
# offset = (Date.today).strftime('%d%m%y')
# k= (offset.to_i) ** 2
# date_squared_array = k.to_s.chars
# date_squared_array.last(4)

# time = Time.new
# offset = "150216"           #@input

# time = Time.new
# @strftime = strftime
# @input = Date.today.strftime('%d%m%y')
