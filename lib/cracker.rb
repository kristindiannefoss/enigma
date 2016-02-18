require 'pry'
require '../lib/key_generator'
require '../lib/date_offset_generator'
require '../lib/decryptor'

class Cracker
  attr_reader :date
  def initialize#(output, date = Date.today)
    @date = DateOffsetGenerator.new.formatted_date
    @decryptor = Decryptor.new
  end

  def crack(output)
    99999.times do |key|
      string_key = key.to_s.rjust(5,"0")
      result = @decryptor.decrypt(output, string_key, date)
      result[-7..-1] == "..end.."
      result
      end
  end
end

#date array for date today = ["6", "6", "5", "6"]

#all messages end with ..end..
#it takes in the encrypted message and uses the ..end.. to decern the key

#if we know that Aro "." is a numbered rotation, we can get the first number, then Bro "." will also give away Bro rotation, in "..end.." the first four are "..en" then the Aro "." value should equal the "d" Aro value.

#outputs the key
