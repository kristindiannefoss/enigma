require_relative "encryptor"

class Enigma

  def initialize
    @encryptor = Encryptor.new
  end

  def encrypt(message)
    @encryptor.encrypt(message, key, date)

  end
end


enigma = Enigma.new

puts enigma.encrypt("Hello")
