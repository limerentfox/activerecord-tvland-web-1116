class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    "#{first_name} #{last_name}"
  end

  def list_roles
    roles = []
    self.characters.each do |character|
      self.shows.each do |show|
        roles <<  "#{character.name} - #{show.name}"
      end
    end
    roles
  end
end
