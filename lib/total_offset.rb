require 'pry'
require '../lib/key_generator'
require '../lib/date_offset_generator'

class TotalOffset

  def initialize
    key = KeyGenerator.new
    date = DateOffsetGenerator.new
  end

  def indidual_rotations
    # key = KeyGenerator.new
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

    lettered_rotations = [a_ro, b_ro, c_ro, d_ro]
  end
end

#   k = 12345.to_s.chars
#   d = 1234.to_s.chars
#
#   a = (k[0] + k[1]).to_s
#   a_ro = a.to_i + d[0].to_i
#   b = (k[1] + k[2]).to_s
#   b_ro = b.to_i + d[1].to_i
#   c = (k[2] + k[3]).to_s
#   c_ro = c.to_i + d[2].to_i
#   d = (k[3] + k[4]).to_i
#   d_ro = d.to_i + d[3].to_i
#
#
#
#
#
#
#
#
# end
#
# date_offset = Offset.new
# date_offset.format_date
#
# def indidual_rotations
#   key = KeyGenerator.new
#   key.random_number
#
# end
#
# def format_date(date_input)
#
#   offset = ().strftime('%d%m%y')
#   k= (offset.to_i) ** 2
#   date_squared_array = k.to_s.chars
#   offsets_array = []
#       binding.pry
#   4.times do |i|
#     i = offsets_array << date_squared_array.pop
#   end
# end
