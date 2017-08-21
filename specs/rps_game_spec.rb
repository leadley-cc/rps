require "minitest/autorun"
require "minitest/rg"
require_relative "../models/rps_game"

class RPSGameSpec < MiniTest::Test
  def setup
    @game = RPSGame.new
  end

  def test_rock_scissors_is_valid
    assert_equal(true, @game.valid_hands?(:rock, :scissors))
  end

  def test_rock_biscuit_is_invalid
    assert_equal(false, @game.valid_hands?(:rock, :biscuit))
  end

  def test_rock_scissors_is_winner
    assert_equal(true, @game.is_winner?(:rock, :scissors))
  end

  def test_scissors_rock_is_not_winner
    assert_equal(false, @game.is_winner?(:scissors, :rock))
  end

  def test_play_rock_scissors_is_1
    assert_equal(1, @game.play(:rock, :scissors))
  end

  def test_play_paper_scissors_is_2
    assert_equal(2, @game.play(:paper, :scissors))
  end

  def test_play_paper_paper_is_0
    assert_equal(0, @game.play(:paper, :paper))
  end

  def test_play_paper_biscuit_is_invalid
    assert_equal(-1, @game.play(:paper, :biscuit))
  end
end
