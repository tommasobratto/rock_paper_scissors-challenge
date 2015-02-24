require 'player'

describe Player do

  let(:player)   { Player.new("Mario") }
  let(:cpu)      { double :ai          }

  it "should have a name" do
    expect(player.name).to eq("Mario")
  end

  it "should be able to select an element" do
    player.choice('rock')
    expect(player.element_selected).to eq(:rock)
  end
end