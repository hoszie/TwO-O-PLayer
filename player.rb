class Player
  attr_accessor :name, :score

  def initialize(name)
    @name = name
    @score = 3
  end

  def is_defeated?
    @score < 1
  end

end
