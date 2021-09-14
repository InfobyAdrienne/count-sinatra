class Counter
  attr_reader :count, :time 

  def initialize
    @count = 0
  end

  def increment
    @count += 1
  end

  def decrement
    @count -= 1
  end

  def self.instance
    @counter ||= Counter.new
  end

  def time
    @time = Time.new.strftime("%I:%M:%S %p")
  end

  def reset 
    @count = 0
  end 
end
