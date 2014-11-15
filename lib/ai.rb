class Ai

  attr_reader :options
  attr_reader :selection

  def initialize(*args)
    @options = args.map{|arg| arg.new }
  end

  def make_selection
    @selection = options.sample
  end

end