class Roster < ApplicationRecord
   has_many :playerbots, dependent: :destroy
   belongs_to :team, :class_name => 'Team', :foreign_key => 'team_id'
   validates_uniqueness_of :team_id
end