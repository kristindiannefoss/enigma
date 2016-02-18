require 'pry'
require '../lib/key_generator'
require '../lib/date_offset_generator'
require '../lib/'

# require '../lib/offset'

class Crack

  def initialize(output, date = Date.today) #date is optional, use default Date.today
    doom = DateOffsetGenerator.new

    date = doom.formatted_date
    a = (key[0] + key[1]).to_s
    a_ro = a.to_i + date[0].to_i
    b = (key[1] + key[2]).to_s
    b_ro = b.to_i + date[1].to_i
    c = (key[2] + key[3]).to_s
    c_ro = c.to_i + date[2].to_i
    d = (key[3] + key[4]).to_i
    d_ro = d.to_i + date[3].to_i

    @rotation = [a_ro, b_ro, c_ro, d_ro]

    "the message was encoded with a key of #{@key}"
  end

end

#date array for date today = ["6", "6", "5", "6"]

#all messages end with ..end..
#it takes in the encrypted message and uses the ..end.. to decern the key

#if we know that Aro "." is a numbered rotation, we can get the first number, then Bro "." will also give away Bro rotation, in "..end.." the first four are "..en" then the Aro "." value should equal the "d" Aro value.

#outputs the key
