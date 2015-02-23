class Ai 

  ELEMENTS_AVAILABLE = [ :rock, :paper, :scissors ]

  def choice
    ELEMENTS_AVAILABLE.sample
  end
end