class Player

  attr_reader :selection
  attr_accessor :name

  def make_selection(object)
    @selection = object.new
  end

end