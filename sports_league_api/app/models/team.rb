class Team < ApplicationRecord
   
   has_secure_password
   include Sluggable
   sluggable_attr :name

   has_many :player_bots

   validates :name, presence: true, uniqueness: true
   validates :email, presence: true, uniqueness: true
   

  end
