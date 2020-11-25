class Playerbot < ApplicationRecord
  validates :name, presence: true
  validates :speed, presence: true
  validates :strength, presence: true
  validates :agility, presence: true
  belongs_to :team
end