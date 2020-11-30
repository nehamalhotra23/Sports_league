# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
# Teams
0.upto(20).each {|n| 
  Team.create( name: "TEAM #{n}", email: "team#{n}@ymail.com", password: "team#{n}@ymail.com" ,  password_confirmation: "team#{n}@ymail.com")
}

70.times do |n|
  Team.all[0].player_bots.create(name: "playerbot #{n}", speed: 30, strength: 20,  agility: 10, designation: 'starter')
end

30.times do |n|
  Team.all[0].player_bots.create(name: "playerbot #{n}", speed: 40, strength: 10,  agility: 30, designation: 'alternate')
end

70.times do |n|
  Team.all[1].player_bots.create(name: "playerbot #{n}", speed: 15, strength: 25,  agility: 45, designation: 'starter')
end

30.times do |n|
  Team.all[1].player_bots.create(name: "playerbot #{n}", speed: 35, strength: 13,  agility: 27, designation: 'alternate')
end

70.times do |n|
  Team.all[2].player_bots.create(name: "playerbot #{n}", speed: 34, strength: 23,  agility: 11, designation: 'starter')
end

30.times do |n|
  Team.all[2].player_bots.create(name: "playerbot #{n}", speed: 22, strength: 22,  agility: 11, designation: 'alternate')
end

70.times do |n|
  Team.all[3].player_bots.create(name: "playerbot #{n}", speed: 20, strength: 30,  agility: 20, designation: 'starter')
end

30.times do |n|
  Team.all[3].player_bots.create(name: "playerbot #{n}", speed: 10, strength: 20,  agility: 30, designation: 'alternate')
end


70.times do |n|
  Team.all[4].player_bots.create(name: "playerbot #{n}", speed: 21, strength: 31,  agility: 11, designation: 'starter')
end


30.times do |n|
  Team.all[4].player_bots.create(name: "playerbot #{n}", speed: 33, strength: 33,  agility: 10, designation: 'alternate')
end

70.times do |n|
  Team.all[5].player_bots.create(name: "playerbot #{n}", speed: 22, strength: 21,  agility: 34, designation: 'starter')
end

30.times do |n|
  Team.all[5].player_bots.create(name: "playerbot #{n}", speed: 3, strength: 4, agility: 5, designation: 'alternate')
end
