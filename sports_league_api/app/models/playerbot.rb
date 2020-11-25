class Playerbot < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :speed, presence: true
  validates :strength, presence: true
  validates :designation, presence: true
  belongs_to :rosters, :class_name => 'Roster', :foreign_key => 'roster_id'
  has_many :teams,  through: :rosters 
  validates_uniqueness_of :roster_id
end