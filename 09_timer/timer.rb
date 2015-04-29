class Timer
  attr_accessor :seconds, :time_string

  def initialize
    @seconds = 0
  end

  def time_string
    hours = (@seconds/3600).to_s
    minutes = ((@seconds%3600)/60).to_s
    seconds = (@seconds%60).to_s
    return_string = "#{'%02d'%hours}:#{'%02d'%minutes}:#{'%02d'%seconds}"
  end
end
