class Car < ActiveRecord::Base

  validates :make, :year, :color, :wheels, :doors, presence: true
  validates :year,:wheels, :doors,  numericality: { only_integer: true }
end
