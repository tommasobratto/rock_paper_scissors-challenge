class Game

  attr_reader :player, :cpu

   CONFRONTATION = {
      :rock => { :paper => :lose, :scissors => :win },
      :paper => { :scissors => :lose, :rock => :win },
      :scissors => { :rock => :lose, :paper => :win }
    }

  def add_players(player, cpu)
    @player = player
    @cpu = cpu
  end

  def outcome
    player_choice = @player.element_selected
    cpu_choice = @cpu.choice
    battle = CONFRONTATION[player_choice][cpu_choice]
    outcome_message(battle)
  end

  def outcome_message(battle)
    if battle == :win
      return true
    elsif battle == :lose
      return false
    else 
      return nil
    end
  end

  # def draw?
  #   @player_choice == @cpu_choice ? true : false
  # end
end