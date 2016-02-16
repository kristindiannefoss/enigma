require 'pry'
require '../lib/key_generator'
require 'date'

class DateOffsetGenerator

  attr_reader

  def initialize (date_input = Date.today.strftime('%d%m%y'))
  end

  def format_date (date_input)
    a = (date_input).strftime('%d%m%y')
    k= (a.to_i) ** 2
    date_squared_array = k.to_s.chars
    j = date_squared_array.last(4)
    # j.to_s.concat.to_i
  end
end
