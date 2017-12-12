
class Game

  attr_accessor :player_1, :player_2

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
  end

  def result()
     if @player_1 == "rock" && @player_2 == "scissors"
       return "Rock wins!"
     elsif @player_1 == "rock" && @player_2 == "paper"
       return "Paper wins!"
     elsif @player_1 == "paper" && @player_2 == "scissors"
       return "Scissors wins!"
     elsif @player_1 == "paper" && @player_2 == "rock"
       return "Paper wins!"
     elsif @player_1 == "scissors" && @player_2 == "rock"
       return "Rock wins!"
     elsif @player_1 == "scissors" && @player_2 == "paper"
       return "Scissors wins!"
     elsif @player_1 == @player_2
       return "Play again!"
     else
       return "Invalid play"
     end
  end


end
