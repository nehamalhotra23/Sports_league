class PlayerBot < ApplicationRecord
  has_many :teams

  validates :name, presence: true, uniqueness: true
  validates :speed, presence: true
  validates :strength, presence: true
  validates :designation, presence: true
  
end