class RPSGame
  WINNERS = {
    :rock => :scissors,
    :scissors => :paper,
    :paper => :rock
  }
  HANDS = WINNERS.keys

  def self.play(hand1, hand2)
    return -1 unless valid_hands?(hand1, hand2)
    return 0 if hand1 == hand2
    return 1 if is_winner?(hand1, hand2)
    return 2
  end

  def self.is_winner?(hand1, hand2)
    WINNERS[hand1] == hand2
  end

  def self.valid_hands?(hand1, hand2)
    HANDS.include?(hand1) && HANDS.include?(hand2)
  end
end
