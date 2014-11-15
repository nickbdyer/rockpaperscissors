require 'paper'

describe "Paper" do

  it "should have the class Paper" do
    paper = Paper.new
    expect(paper.class).to eq Paper
  end

end