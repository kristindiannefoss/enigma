require 'pry'
require '../lib/key_generator'
require '../lib/date_offset_generator'
require '../lib/decryptor'

class Cracker
  attr_reader :date
  def initialize#(output, date = Date.today)
    # @date = DateOffsetGenerator.new.formatted_date
    @decryptor = Decryptor.new
  end

  def crack(message, date)
    0.upto(99999) do |key|
         temp_key = key.to_s.rjust(5,"0")
         temp_message = @decryptor.decrypt(message, temp_key, date)
         return temp_message if temp_message[-7..-1] == "..end.."
       end
  end
end
