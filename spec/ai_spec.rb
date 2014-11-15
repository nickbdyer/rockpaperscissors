require 'ai'

  describe "AI" do

    let(:ai)             { Ai.new                                   }
    let(:rock_class)     { double :rock_class, :new => rock         }
    let(:paper_class)    { double :paper_class, :new => paper       }
    let(:scissors_class) { double :scissors_class, :new => scissors }
    let(:rock)           { double :rock                             }
    let(:paper)          { double :paper                            }
    let(:scissors)       { double :scissors                         }

    it "should have an array of options" do
      expect(ai.options).to eq []
    end

    it "should be able to be initialized with options" do
      ai_rps = Ai.new(rock_class, paper_class, scissors_class)
      expect(ai_rps.options).to eq [rock, paper, scissors]
    end

  # it "should be able to make a random selection" do
  #   ai = Ai.new
  #   ai.make_selection
  #   expect(ai.selection).to eq(rock).or (paper).or (scissors)
  # end



end