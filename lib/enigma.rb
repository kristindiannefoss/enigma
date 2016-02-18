require_relative "encryptor"

class Enigma

  def initialize
    @encryptor = Encryptor.new
    @new_key = KeyGenerator.random_number
    @date = DateOffsetGenerator.new.formatted_date
    @craquistador = Crack.new

  end

  def encrypt(message, key = "12345", date)
    @encryptor.encrypt(message, key = "12345", @date)
  end

  def new_key
    @new_key
  end

  def crack(output, date = Date.today)
    @craquistador.crack(message, date)
  end
end

# #
# enigma = Enigma.new
# puts enigma.encrypt("Hello", "12345", Date.today)
