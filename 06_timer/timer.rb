class Timer
  attr_reader :time_string, :seconds
  #write your code here
  def initialize
    @seconds = 0
  end

  def seconds=(seconds)
    @time_string = "%02i:%02i:%02i" % [seconds/3600,seconds%3600/60,seconds%3600%60]
    end
end
