require 'minitest/autorun'
require 'minitest/pride'
require '../lib/character'

class CharacterTest < Minitest::Test
  def setup
    @character = Character.new({name: "KITT", actor: "William Daniels", salary: 1_000_000})
  end

  def test_it_exists
    assert_instance_of Character, @character
  end

  def test_it_has_argument_attributes
    assert_equal "KITT", @character.name
    assert_equal "William Daniels", @character.actor
    assert_equal 1_000_000, @character.salary
  end
end
