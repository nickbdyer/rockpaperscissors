require 'paper'

describe "Paper" do

  let(:paper) { Paper.new    }
  let(:rock)  { double :rock, :class => Rock }

  it "should have the class Paper" do
    expect(paper.class).to eq Paper
  end

  it "should know if it is a winning selecton" do
    expect(paper.won?(rock)).to be true
  end

end