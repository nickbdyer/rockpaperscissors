class Player

  attr_reader :selection
  attr_accessor :name

  def make_selection(object)
    @selection = Kernel.const_get(object).new
  end

end
