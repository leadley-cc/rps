require "minitest/autorun"
require "minitest/rg"
require_relative "../models/rps_game"

class RPSGameSpec < MiniTest::Test
  def test_rock_scissors_is_valid
    assert_equal(true, RPSGame.valid_hands?(:rock, :scissors))
  end

  def test_rock_biscuit_is_invalid
    assert_equal(false, RPSGame.valid_hands?(:rock, :biscuit))
  end

  def test_rock_scissors_is_winner
    assert_equal(true, RPSGame.is_winner?(:rock, :scissors))
  end

  def test_scissors_rock_is_not_winner
    assert_equal(false, RPSGame.is_winner?(:scissors, :rock))
  end

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
