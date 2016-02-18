require_relative 'encryptor'
require_relative 'key_generator'
require_relative 'date_offset_generator'
require_relative 'cracker'

class Enigma

  def initialize
    @encryptor = Encryptor.new
    @new_key = KeyGenerator.random_number
    @date = DateOffsetGenerator.new.formatted_date
    @craquistador = Cracker.new
  end

  def encrypt(message, key = "12345", date)
    @encryptor.encrypt(message, key = "12345", @date)
  end

  def new_key
    @new_key.to_s
  end

  def crack(output, date = Date.today)
    @craquistador.crack(output, date)
  end
end

# #
# enigma = Enigma.new
# puts enigma.encrypt("Hello", "12345", Date.today)
