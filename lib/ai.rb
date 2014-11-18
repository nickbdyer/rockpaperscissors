class Ai

  attr_reader :options, :selection, :name

  def initialize(*args)
    @name = "HAL 9000"
    @options = args.map{|arg| arg.new }
  end

  def make_selection
    @selection = options.sample
  end

end