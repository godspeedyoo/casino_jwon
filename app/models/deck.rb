class Deck
  attr_reader :cards

  def initialize
    @cards = generate_standard_deck
  end

  def draw
    @cards.pop
  end

  def shuffle
    @cards.shuffle!
    self
  end

  private

  def generate_standard_deck
    # can subclass standard deck if we see a need for other types of decks
    (0..51).to_a.shuffle!.map { |id| Card.new(id) }
  end
end
