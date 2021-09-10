require 'timer'

describe Timer do 
  describe '#timer' do 
    it 'displays the time the count was last updated' do
      timer = Timer.new 
      expect(timer.current_time).to eq(Time.now.to_s)
    end 
  end 
end 
