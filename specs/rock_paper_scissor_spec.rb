require("minitest/autorun")
require("minitest/rg")
require_relative("../models/rock_paper_scissor")


class TestGame < MiniTest::Test

  def setup
    @game = Game.new(@player_1, @player_2)
  end

  def test_game__rock_v_scissors
    game_1 = Game.new("rock", "scissors")
    assert_equal("Rock wins!", game_1.result())
  end

  def test_game__rock_v_paper
    new_game = Game.new("rock", "paper")
    assert_equal("Paper wins!", new_game.result())
  end

  def test_game__paper_v_scissors
    new_game = Game.new("paper", "scissors")
    assert_equal("Scissors wins!", new_game.result())
  end

  def test_game__paper_v_rock
    new_game = Game.new("paper", "rock")
    assert_equal("Paper wins!", new_game.result())
  end

  def test_game__scissors_v_rock
    new_game = Game.new("scissors", "rock")
    assert_equal("Rock wins!", new_game.result())
  end

  def test_game__scissors_v_paper
    new_game = Game.new("scissors", "paper")
    assert_equal("Scissors wins!", new_game.result())
  end

  def test_game__rock_v_rock
    new_game = Game.new("rock", "rock")
    assert_equal("Play again!", new_game.result())
  end

  def test_game__paper_v_paper
    new_game = Game.new("paper", "paper")
    assert_equal("Play again!", new_game.result())
  end

  def test_game__scissors_v_scissors
    new_game = Game.new("scissors", "scissors")
    assert_equal("Play again!", new_game.result())
  end

end
