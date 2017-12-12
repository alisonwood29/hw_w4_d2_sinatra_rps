require("minitest/autorun")
require_relative("../models/rock_paper_scissor")


class TestGame < MiniTest::Test

  def setup
    @game = Game.new(@player_1, @player_2)
  end

  def test_game__rock_v_scissors
    new_game = Game.new(rock, scissors)
    assert_equal("Rock wins!", new_game.result())
  end
  def test_game__rock_v_paper
    new_game = Game.new(rock, paper)
    assert_equal("Paper wins!", result)
  end
  def test_game__paper_v_scissors
    result = play_game(paper, scissors)
    assert_equal("Scissors wins!", result)
  end
  def test_game__paper_v_rock
    result = play_game(paper, rock)
    assert_equal("Paper wins!", result)
  end
  def test_game__scissors_v_rock
    result = play_game(rock, scissors)
    assert_equal("Rock wins!", result)
  end
  def test_game__scissors_v_paper
    result = play_game(rock, scissors)
    assert_equal("Scissors wins!", result)
  end
  def test_game__rock_v_rock
    result = play_game(rock, scissors)
    assert_equal("Try again!", result)
  end
  def test_game__paper_v_paper
    result = play_game(rock, scissors)
    assert_equal("Try again!", result)
  end
  def test_game__scissors_v_scissors
    result = play_game(rock, scissors)
    assert_equal("Try again!", result)
  end

end
