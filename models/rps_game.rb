class RPSGame
  WINNERS = {
    :rock => :scissors,
    :scissors => :paper,
    :paper => :rock
  }
  HANDS = WINNERS.keys

  def self.play(hand1, hand2)
    return -1 unless HANDS.include?(hand1) && HANDS.include?(hand2)
    return 0 if hand1 == hand2
    return 1 if WINNERS[hand1] == hand2
    return 2
  end
end
