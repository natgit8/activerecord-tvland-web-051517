
class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    full = self.first_name + " " + self.last_name
    full
  end

  def list_roles
    
    "#{self.characters.first.name} - #{self.characters.first.show.name}"
  end

end


# Write a method in the Actor class, #full_name, that returns the first and last name of an actor.
# Write a method in the Actor class, #list_roles, that lists all of the characters that actor has.
