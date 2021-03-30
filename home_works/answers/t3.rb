require 'byebug'

require 'csv'
require 'date'

class AvgTem
  Reading = Struct.new(:data, :temp)

  def initialize(file_mame)
    @file_mame = file_mame
    @readings = []
    @temp_month = []
    @month = 1..12
  end

  def read
    CSV.foreach(@file_mame, headers: true) do |row|
      @readings << Reading.new(Date.parse(row[0]).month, row[1].to_f)
    end
    @readings
  end

  def avg_temp
    @month.each do |month|
      @readings.select do |c|
        @temp_month << c.temp if c.data == month
      end
      avg = @temp_month.reduce(:+) / @temp_month.size.to_f
      p "Month: #{month}, Average (t) : #{avg}"
      @temp_month.clear
    end
  end
end

a = AvgTem.new('t3.csv')
a.read
a.avg_temp
