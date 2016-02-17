# require 'pry'
# require '../lib/key_generator'
# require '../lib/date_offset_generator'
#
# class TotalOffset
#
#   def initialize
#   end
#
#   def self.individual_rotations(date, key = "12345")
#     # key = KeyGenerator.new
#     k = KeyGenerator.random_number
#     d = date.format_date.chars
#
#     a = (key[0] + key[1]).to_s
#     a_ro = a.to_i + d[0].to_i
#     b = (k[1] + k[2]).to_s
#     b_ro = b.to_i + d[1].to_i
#     c = (k[2] + k[3]).to_s
#     c_ro = c.to_i + d[2].to_i
#     d = (k[3] + k[4]).to_i
#     d_ro = d.to_i + d[3].to_i
#
#     [a_ro, b_ro, c_ro, d_ro]
#   end
# end
