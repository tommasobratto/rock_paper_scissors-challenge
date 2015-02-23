class Game

  attr_reader :player, :confrontation

   CONFRONTATION = {
      :rock => { :paper => :lose, :scissors => :win },
      :paper => { :scissors => :lose, :paper => :win },
      :scissors => { :rock => :lose, :scissors => :win }
    }

  def add_players(player, cpu)
    @player = player
    @cpu = cpu
  end

  def outcome
    player_choice = @player.element_selected
    cpu_choice = @cpu.choice
    outcome = CONFRONTATION[player_choice][cpu_choice]
    outcome_message(outcome)
  end

  def outcome_message(outcome)
    if outcome == :win
      true
    elsif outcome == :lose
      false
    else 
      nil
    end
  end

  # def draw?
  #   @player_choice == @cpu_choice ? true : false
  # end
end