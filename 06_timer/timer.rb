class Timer
  #write your code here

  def initialize
  	@seconds = 0
  end

  def seconds
  	return @seconds
  end

  def time_string
  	time = rollover(seconds)
  	time.collect! { |t|
  		t = padded(t)
  	}
  	@time_string = "#{time[0]}:#{time[1]}:#{time[2]}"
  	return @time_string
  end

  def seconds=(s)
  	@seconds = s
  end

  def padded(num)
		if num.to_s.length == 1
			num = '0' + num.to_s
		end
		return num.to_s
	end

private

	#creates array of hr/min/sec from given seconds count
	def rollover(seconds)
		hours = seconds / 3600
		remainder = seconds - hours * 3600
		minutes = remainder / 60
		remainder = remainder - minutes * 60
		secs = remainder

		time = [hours, minutes, secs]
	end
end
