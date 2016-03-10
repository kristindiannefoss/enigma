require 'pry'
require 'date'

class DateOffsetGenerator
  attr_reader :date

  def initialize
    @date = self.formatted_date(date)
  end

  def self.formatted_date(date_input = Date.today)
    date = date_input.strftime('%d%m%y')
    squared_date = (date.to_i) ** 2
    squared_date.to_s.chars.last(4).join
    # squared_date.to_s.chars.last(4).to_i
  end

  def date_to_strf_for_reader
    date = @date.strftime('%d%m%y')
  end
end
