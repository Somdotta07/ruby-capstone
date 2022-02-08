require_relative 'item'

class Game < Item
  def initialize(multiplayer, last_played_at, publish_date)
    super(id: nil, publish_date: publish_date)
    @multiplayer = multiplayer
    @last_played_at = last_played_at
  end

  def can_be_archived?
    current_year = Time.new.year
    elapsed_time = current_year - last_played_at
    super() and (elapsed_time > 2)
  end
end
