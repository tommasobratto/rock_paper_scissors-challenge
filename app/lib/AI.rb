class Ai 

  attr_reader :element_selected

  ELEMENTS_AVAILABLE = [ :rock, :paper, :scissors ]

  def choice
    @element_selected = ELEMENTS_AVAILABLE.sample
  end
end