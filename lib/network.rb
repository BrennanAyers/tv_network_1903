class Network
  attr_reader :name, :shows

  def initialize(name)
    @name = name
    @shows = []
  end

  def add_show(show)
    @shows << show
  end

  def highest_paid_actor
    character_hash = {}
    @shows.each do |show|
      show.characters.each do |character|
        character_hash[character.actor] = character.salary
      end
    end
    high_roller = character_hash.max_by do |character|
      character.last
    end
    high_roller.first
  end
end
