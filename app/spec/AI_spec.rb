require 'ai'

describe Ai do
  
  let(:cpu)  { Ai.new }

  it "should be able to randomly select an element" do
    allow(cpu).to receive(:choice).and_return(:rock) 
    expect(cpu.element_selected).to eq(:rock)
  end
end