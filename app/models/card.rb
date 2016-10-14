class Card
  RANKS = %w(2 3 4 5 6 7 8 9 10 J Q K A)
  SUITS = %w(Spades Hearts Diamonds Clubs)
  attr_reader :rank, :suit, :visible, :id

  def initialize(id = nil)
    @id = id || rand(0..51)
    @rank = RANKS[id % 13]
    @suit = SUITS[id % 4]
    @visible = false
  end

  def flip
    @visible = !@visible
    self
  end
end
