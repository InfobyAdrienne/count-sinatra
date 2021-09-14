require 'counter'

describe Counter do
  describe '#new' do
    it 'starts with a count of 0' do
      counter = Counter.new
      expect(counter.count).to eq 0
    end
  end

  describe '#increment' do
    it 'adds 1 to the count' do
      counter = Counter.new
      counter.increment
      expect(counter.count).to eq 1
    end
  end

  describe '#decrement' do
    it 'minuses 1 to the count' do
      counter = Counter.new
      counter.decrement
      expect(counter.count).to eq -1
    end
  end

  describe '#timer' do 
    it 'shows the last time the count was clicked' do 
      counter = Counter.new
      counter.time
      expect(counter.time).to eq Time.new.strftime("%I:%M:%S %p")
    end 
  end 

  describe '#reset' do 
    it 'resets the counter' do 
      counter = Counter.new 
      counter.reset 
      # This is resetting the counter to zero, so is the original expectation as the initial counter 
      expect(counter.count).to eq 0
    end 
  end 

end
