class Player

  attr_reader :name, :element_selected

  def initialize(name)
    @name = name
  end

  def select_element(element)
    @element_selected = element
  end

  def win?
    @element_selected.win? == true ? true : false
  end

end