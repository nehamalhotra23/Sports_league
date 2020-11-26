class Team < ApplicationRecord
   has_secure_password
   validates :name, presence: true, uniqueness: true
   validates :email, presence: true, uniqueness: true
   has_one :roster
   has_many :playerbots, through: :rosters 

  end
