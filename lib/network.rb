class Network
  attr_reader :name, :shows

  def initialize(name)
    @name = name
    @shows = []
  end

  def add_show(show)
    @shows << show
  end

  def payroll
    character_hash = {}
    @shows.each do |show|
      show.characters.each do |character|
        character_hash[character.actor] = character.salary
      end
    end
    character_hash
  end

  def highest_paid_actor
    payroll
    high_roller = payroll.max_by do |character|
      character.last
    end
    high_roller.first
  end
end
