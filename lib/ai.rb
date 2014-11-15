class Ai

  attr_reader :options

  def initialize(*args)
    @options = args.map{|arg| arg.new }
  end



  def make_selection
  end

end