require "minitest/autorun"
require "minitest/rg"
require_relative "../models/rps_game"

class RPSGameSpec < MiniTest::Test
  def test_play_rock_scissors_is_1
    assert_equal(1, RPSGame.play(:rock, :scissors))
  end

  def test_play_paper_scissors_is_2
    assert_equal(2, RPSGame.play(:paper, :scissors))
  end

  def test_play_paper_paper_is_0
    assert_equal(0, RPSGame.play(:paper, :paper))
  end

  def test_play_paper_biscuit_is_invalid
    assert_equal(-1, RPSGame.play(:paper, :biscuit))
  end
end
