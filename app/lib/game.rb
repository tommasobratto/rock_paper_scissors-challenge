class Game

  attr_reader: :cpu, :player, :player_choice, :cpu_choice

  def initialize(players = {})
    @player = players[:player]
    @cpu = players[:cpu]
  end

  def player_selection(element)
    @player_choice = player.select_element(element)
  end

  def battle
    @player_choice.confront(@cpu_choice)
  end

  def cpu_selection
    @cpu_choice = cpu.random_selection
  end

  def outcome
    !draw? && player.win? ? true : false
  end

  def draw?
    @player_choice == @cpu_choice ? true : false
  end
end