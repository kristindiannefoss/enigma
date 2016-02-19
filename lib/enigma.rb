require_relative 'encryptor'
require_relative 'key_generator'
require_relative 'date_offset_generator'
require_relative 'cracker'

class Enigma

  attr_accessor :new_key, :date

  def initialize(message, key= nil, date)
    @new_key =  key.nil? ? KeyGenerator.new.create_new_key : key
    @date = date.nil? ? DateOffsetGenerator.new.formatted_date : date
    @encryptor = Encryptor.new(@new_key, @date)
    @decryptor = Decryptor.new(@new_key, @date)
    #@craquistador = Cracker.new
  end

  def encrypt(message, new_key, date)
    #print "enigma.rb: key = %d, date = %d\n" % [key,date]
    @encryptor.encrypt(message, new_key, @date)
  end

  def decrypt(message, new_key, date)
    # print "enigma.rb - decrypt(): key = %d, date = %d, @date = %s\n" % [key,date,@date.to_s]
    @decryptor.decrypt(message, new_key, @date)
  end

  # def new_key
  #   @new_key.to_s
  # end

  def crack(output, date = Date.today)
    @craquistador.crack(output, date)
  end
end
