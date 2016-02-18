require 'pry'
require 'date'

class DateOffsetGenerator
  attr_reader :date

  def initialize (date_input = Date.today)
    @date = date_input
  end

  def formatted_date
    date = @date.strftime('%d%m%y')
    squared_date = (date.to_i) ** 2
    squared_date.to_s.chars.last(4)
  end
end
