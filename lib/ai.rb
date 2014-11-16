class Ai

  attr_reader :options
  attr_reader :selection
  attr_reader :name

  def initialize(*args)
    @name = "HAL 9000"
    @options = args.map{|arg| arg.new }
  end

  def make_selection
    @selection = options.sample
  end

end