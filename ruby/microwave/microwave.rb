class Microwave

  def initialize (time)
    @time = time
    @arrOfDigits = time.digits
    @numDigits = @arrOfDigits.count
  end

  def timer
  # If the enter 1 digit, display that as seconds
    case @numDigits
      when 1
        "00:0#{@time}" 
      when 2
        if @time == 60 
          "01:00" 
        elsif @time < 60
          "00:#{@time}"
        else 
          if @time % 60 < 10
          "01:0#{@time % 60}"
          else 
          "01:#{@time % 60}"
          end
        end
      when 3
        "0#{@arrOfDigits[2]}:#{@arrOfDigits[1]}#{@arrOfDigits[0]}"
      else
        "#{@arrOfDigits[3]}#{@arrOfDigits[2]}:#{@arrOfDigits[1]}#{@arrOfDigits.count[0]}"
    end
  end


end


