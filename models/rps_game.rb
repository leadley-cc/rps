class RPSGame
  def initialize
    @hands = [:rock, :paper, :scissors]
    @winners = [
      [:rock, :scissors],
      [:scissors, :paper],
      [:paper, :rock]
    ]
  end

  def play(hand1, hand2)
    return -1 unless valid_hands?(hand1, hand2)
    return 1 if is_winner?(hand1, hand2)
    return 2 if is_winner?(hand2, hand1)
    return 0
  end

  def is_winner?(hand1, hand2)
    @winners.include?([hand1, hand2])
  end

  def valid_hands?(hand1, hand2)
    return true if @hands.include?(hand1) && @hands.include?(hand2)
    return false
  end
end
