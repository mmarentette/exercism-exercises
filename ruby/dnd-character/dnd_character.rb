class DndCharacter
  BASE_HITPOINTS = 10
  ATTRIBUTES = %i[strength dexterity constitution intelligence wisdom charisma]
  
  attr_reader *ATTRIBUTES
  
  def self.modifier(attribute)
    (attribute - 10) / 2
  end

  def initialize
    ATTRIBUTES.each do |attribute|
      self.instance_variable_set("@#{attribute}", attribute_assignment)
    end
  end

  def hitpoints
    BASE_HITPOINTS + self.class.modifier(constitution)
  end

  private

  def attribute_assignment
    rolls = 4.times.map { die_roll }
    rolls.sort.last(3).sum
  end

  def die_roll
    rand(1..6)
  end
end
