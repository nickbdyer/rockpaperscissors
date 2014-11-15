class Player

  attr_reader :selection

  def make_selection(object)
    @selection = object.new
  end

end