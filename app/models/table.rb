class Table
  MIN_TABLE_SIZE = 2

  attr_reader :seats

  def initialize(size)
    @seats = generate_seats(size)
  end

  def seat_player(player, position)
    if empty_seat?(position)
      @seats[position] = player
    else
      false
    end
  end

  private

  def empty_seat?(position)
    seats[position].nil?
  end

  def generate_seats(size)
    size = [size, MIN_TABLE_SIZE].max
    seats_hash = {}
    (1..size).to_a.each do |seat_ordinal|
      seats_hash[seat_ordinal] = nil
    end
    seats_hash
  end
end
