class Timer
  attr_reader :time_string, :seconds
  #write your code here
  def initialize
    @seconds = 0
  end

  def seconds=(seconds)
    hours = seconds/3600
    minutes = seconds%3600/60
    seconds = seconds%3600%60
    divisions = [hours.to_s, minutes.to_s, seconds.to_s]
    new_seconds = []
    divisions.each { |div|
      if div.length == 1
        new_seconds.append("0#{div}")
      else 
        new_seconds.append(div)
      end
      }
    @time_string = "#{new_seconds[0]}:#{new_seconds[1]}:#{new_seconds[2]}"
    end

end
