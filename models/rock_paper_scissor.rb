class Game

  # attr_ac :player_1, :player_2

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
  end

  def result
    return "Rock wins!" if @player_1 == 'rock' && @player_2 == 'scissors'
    return "Paper wins!" if @player_1 == 'rock' && @player_2 == 'paper'
    return "Scissors wins!" if @player_1 == 'paper' && @player_2 == 'scissors'
    return "Paper wins!" if @player_1 == 'paper' && @player_2 == 'rock'
    return "Rock wins!" if @player_1 == 'scissors' && @player_2 == 'rock'
    return "Scissors wins!" if @player_1 == 'scissors' && @player_2 == 'paper'
    return "Try again!" if @player_1 == @player_2
  end


end
