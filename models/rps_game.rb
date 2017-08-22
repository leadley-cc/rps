class RPSGame
  WINNERS = {
    :rock => :scissors,
    :scissors => :paper,
    :paper => :rock
  }

  def self.play(hand1, hand2)
    return -1 unless WINNERS.has_key?(hand1) && WINNERS.has_key?(hand2)
    return 0 if hand1 == hand2
    return 1 if WINNERS[hand1] == hand2
    return 2
  end
end
