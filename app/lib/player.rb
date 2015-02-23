class Player

  attr_reader :name, :element_selected

  ELEMENTS_AVAILABLE = [ :rock, :paper, :scissors ]

  def initialize(name)
    @name = name
  end

  def choice(element)
    @element_selected = element.to_sym 
  end
end