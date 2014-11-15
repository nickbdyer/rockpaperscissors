require 'ai'

  describe "AI" do

    let(:ai) { Ai.new }

    it "should have an array of options" do
      expect(ai.options).to eq []
    end

  # it "should be able to make a random selection" do
  #   ai = Ai.new
  #   ai.make_selection
  #   expect(ai.selection).to eq(rock).or (paper).or (scissors)
  # end



end