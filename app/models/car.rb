class Car < ActiveRecord::Base

  validates :make, :year, :color, :wheels, :doors, presence: true

end
