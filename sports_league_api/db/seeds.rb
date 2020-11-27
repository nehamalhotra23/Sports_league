# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
# Teams
0.upto(10).each {|n| 
  Team.create( name: "TEAM #{n}", email: "team#{n}@ymail.com", password: "team#{n}@ymail.com" ,  password_confirmation: "team#{n}@ymail.com")
}

#  Playerbots
Team.all[0].player_bots.create(name: 'Neha Malhotra', speed: 1, strength: 45,  agility: 12, designation: 'starter')

Team.all[1].player_bots.create(name: 'Amandeep Dindral',  speed: 2,  strength: 34, agility: 12, designation: 'starter')

 
#  playerbot2 = Playerbot.create(name: 'Amandeep Dindral',  speed: 2,  strength: 34, agility: 12, designation: 'starter', roster_id: roster2.id, rosters: roster2)
 
#  playerbot3 = Playerbot.create(name: 'Anu Dindral', speed: 3, strength: 34, agility: 45,  designation: 'starter', roster_id: roster3.id, rosters: roster3)

#  playerbot4 = Playerbot.create(name: 'Mo Dindral', speed: 3, strength: 34, agility: 45,  designation: 'starter', roster_id: roster4.id, rosters: roster4)

#  playerbot5 = Playerbot.create(name: 'Michael Smith', speed: 6, strength: 34, agility: 45,  designation: 'starter', roster_id: roster5.id, rosters: roster5)

#  playerbot6 = Playerbot.create(name: 'Mike Smith', speed: 5, strength: 34, agility: 45,  designation: 'starter', roster_id: roster6.id, rosters: roster6)

#  playerbot7 = Playerbot.create(name: 'Lauren', speed: 3, strength: 34, agility: 45,  designation: 'starter', roster_id: roster7.id, rosters: roster7)

#  playerbot8 = Playerbot.create(name: 'Deep Smith', speed: 8, strength: 34, agility: 45,  designation: 'starter', roster_id: roster8.id, rosters: roster8)

#  playerbot9 = Playerbot.create(name: 'Jacqueline', speed: 2, strength: 34, agility: 45,  designation: 'starter', roster_id: roster9.id, rosters: roster9)

#  playerbot10 = Playerbot.create(name: 'Anita Kemp', speed: 1, strength: 34, agility: 45,  designation: 'starter', roster_id: roster10.id, rosters: roster10)

#  playerbot11 = Playerbot.create(name: 'Micah', speed: 3, strength: 43, agility: 45,  designation: 'alternate', roster_id: roster11.id, rosters: roster11)

#  playerbot12 = Playerbot.create(name: 'Joel', speed: 3, strength: 23, agility: 45,  designation: 'alternate', roster_id: roster12.id, rosters: roster12)


#  playerbot13 = Playerbot.create(name: 'Kira Roberts', speed: 3, strength: 22, agility: 45,  designation: 'alternate', roster_id: roster13.id, rosters: roster13)

#  playerbot14 = Playerbot.create(name: 'Mauli', speed: 3, strength: 21, agility: 45,  designation: 'alternate', roster_id: roster14.id, rosters: roster14)

#  playerbot15 = Playerbot.create(name: 'Jason', speed: 3, strength: 11, agility: 45,  designation: 'alternate', roster_id: roster15.id, rosters: roster15)

#  playerbot16 = Playerbot.create(name: 'Ethan', speed: 3, strength: 12, agility: 45,  designation: 'alternate', roster_id: roster16.id, rosters: roster16)

#  playerbot17 = Playerbot.create(name: 'Robert', speed: 3, strength: 25, agility: 45,  designation: 'alternate', roster_id: roster17.id, rosters: roster17)


#  playerbot18 = Playerbot.create(name: 'Bamby', speed: 3, strength: 34, agility: 45,  designation: 'alternate', roster_id: roster18.id, rosters: roster18) 

#  playerbot19 = Playerbot.create(name: 'Daisy', speed: 3, strength: 34, agility: 45,  designation: 'starter', roster_id: roster19.id, rosters: roster19)

#  playerbot20 = Playerbot.create(name: 'Omi', speed: 3, strength: 34, agility: 45,  designation: 'starter', roster_id: roster20.id, rosters: roster20)

#  playerbot21 = Playerbot.create(name: 'Aish', speed: 3, strength: 34, agility: 45,  designation: 'starter', roster_id: roster21.id, rosters: roster21)
# #   Character.create(name: 'Luke', movie: movies.first)
