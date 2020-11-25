# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
# Teams
 team1 = Team.create( name: 'TEAM 1', email: 'team1@ymail.com', password: 'team1' ,  password_confirmation: 'team1')
 
 team2 = Team.create( name: 'TEAM 2',  email: 'team2@ymail.com', password: 'team2' , password_confirmation: 'team2')
 
 team3 = Team.create(name: 'TEAM 3',  email: 'team3@ymail.com', password: 'team3', password_confirmation: 'team3')

 team4 = Team.create( name: 'TEAM 4', email: 'team4@ymail.com', password: 'team4' ,  password_confirmation: 'team4')
 
 team5 = Team.create( name: 'TEAM 5',  email: 'team5@ymail.com', password: 'team5' , password_confirmation: 'team5')
 
 team6 = Team.create(name: 'TEAM 6',  email: 'team6@ymail.com', password: 'team6', password_confirmation: 'team6')
 
 team7 = Team.create( name: 'TEAM 7', email: 'team7@ymail.com', password: 'team7' ,  password_confirmation: 'team7')
 
 team8 = Team.create( name: 'TEAM 8',  email: 'team8@ymail.com', password: 'team8' , password_confirmation: 'team8')
 
 team9 = Team.create(name: 'TEAM 9',  email: 'team9@ymail.com', password: 'team9', password_confirmation: 'team9')

 team10 = Team.create( name: 'TEAM 10', email: 'team10@ymail.com', password: 'team10' ,  password_confirmation: 'team10')
 
 team11 = Team.create( name: 'TEAM 11',  email: 'team11@ymail.com', password: 'team11' , password_confirmation: 'team11')
 
 team12 = Team.create(name: 'TEAM 12',  email: 'team12@ymail.com', password: 'team12', password_confirmation: 'team12')

 team13 = Team.create( name: 'TEAM 13', email: 'team13@ymail.com', password: 'team13' ,  password_confirmation: 'team13')
 
 team14 = Team.create( name: 'TEAM 14',  email: 'team14@ymail.com', password: 'team14' , password_confirmation: 'team14')
 
 team15 = Team.create(name: 'TEAM 15',  email: 'team15@ymail.com', password: 'team15', password_confirmation: 'team15')

 team16 = Team.create( name: 'TEAM 16', email: 'team16@ymail.com', password: 'team16' ,  password_confirmation: 'team16')
 
 team17 = Team.create( name: 'TEAM 17',  email: 'team17@ymail.com', password: 'team17' , password_confirmation: 'team17')
 
 team18 = Team.create(name: 'TEAM 18',  email: 'team18@ymail.com', password: 'team18', password_confirmation: 'team18')

 team19 = Team.create( name: 'TEAM 19', email: 'team19@ymail.com', password: 'team19' ,  password_confirmation: 'team19')
 
 team20 = Team.create( name: 'TEAM 20',  email: 'team20@ymail.com', password: 'team20' , password_confirmation: 'team20')
 
 team21 = Team.create(name: 'TEAM 21',  email: 'team21@ymail.com', password: 'team21', password_confirmation: 'team21')

 # Rosters
 roster1 = Roster.create(team_id: team1.id, team: team1)
 
 roster2 = Roster.create(team_id: team2.id, team: team2)
 
 roster3 = Roster.create(team_id: team3.id, team: team3)

 roster4 = Roster.create(team_id: team4.id, team: team4)
 
 roster5 = Roster.create(team_id: team5.id, team: team5)
 
 roster6 = Roster.create(team_id: team6.id, team: team6)

 roster7 = Roster.create(team_id: team7.id, team: team7)
 
 roster8 = Roster.create(team_id: team8.id, team: team8)
 
 roster9 = Roster.create(team_id: team9.id, team: team9)

 roster10 = Roster.create(team_id: team10.id, team: team10)
 
 roster11 = Roster.create(team_id: team11.id, team: team11)

 roster12 = Roster.create(team_id: team12.id, team: team12)
 
 roster13 = Roster.create(team_id: team13.id, team: team13)

 roster14 = Roster.create(team_id: team14.id, team: team14)
 
 roster15 = Roster.create(team_id: team15.id, team: team15)
 
 roster16 = Roster.create(team_id: team16.id, team: team16)
 
 roster17 = Roster.create(team_id: team17.id, team: team17)
 
 roster18 = Roster.create(team_id: team18.id, team: team18)
 
 roster19 = Roster.create(team_id: team19.id, team: team19)
 
 roster20 = Roster.create(team_id: team20.id, team: team20)
 
 roster21 = Roster.create(team_id: team21.id, team: team21)
 
#  roster15 = Roster.create(team_id: team23.id, team: team23)
 
#  roster16 = Roster.create(team_id: team24.id, team: team24)
 
#  roster17 = Roster.create(team_id: team26.id, team: team26)
 
#  roster18 = Roster.create(team_id: team26.id, team: team26)

#  roster19 = Roster.create(team_id: team1.id, team: team1)
 
#  roster20 = Roster.create(team_id: team2.id, team: team2)
 
#  roster21 = Roster.create(team_id: team3.id, team: team3)
 


#  Playerbots
 playerbot1 = Playerbot.create(name: 'Neha Malhotra', speed: 1, strength: 45,  agility: 12, designation: 'starter', roster_id: roster1.id, rosters: roster1)
 
 playerbot2 = Playerbot.create(name: 'Amandeep Dindral',  speed: 2,  strength: 34, agility: 12, designation: 'starter', roster_id: roster2.id, rosters: roster2)
 
 playerbot3 = Playerbot.create(name: 'Anu Dindral', speed: 3, strength: 34, agility: 45,  designation: 'starter', roster_id: roster3.id, rosters: roster3)

 playerbot4 = Playerbot.create(name: 'Mo Dindral', speed: 3, strength: 34, agility: 45,  designation: 'starter', roster_id: roster4.id, rosters: roster4)

 playerbot5 = Playerbot.create(name: 'Michael Smith', speed: 6, strength: 34, agility: 45,  designation: 'starter', roster_id: roster5.id, rosters: roster5)

 playerbot6 = Playerbot.create(name: 'Mike Smith', speed: 5, strength: 34, agility: 45,  designation: 'starter', roster_id: roster6.id, rosters: roster6)

 playerbot7 = Playerbot.create(name: 'Lauren', speed: 3, strength: 34, agility: 45,  designation: 'starter', roster_id: roster7.id, rosters: roster7)

 playerbot8 = Playerbot.create(name: 'Deep Smith', speed: 8, strength: 34, agility: 45,  designation: 'starter', roster_id: roster8.id, rosters: roster8)

 playerbot9 = Playerbot.create(name: 'Jacqueline', speed: 2, strength: 34, agility: 45,  designation: 'starter', roster_id: roster9.id, rosters: roster9)

 playerbot10 = Playerbot.create(name: 'Anita Kemp', speed: 1, strength: 34, agility: 45,  designation: 'starter', roster_id: roster10.id, rosters: roster10)

 playerbot11 = Playerbot.create(name: 'Micah', speed: 3, strength: 43, agility: 45,  designation: 'alternate', roster_id: roster11.id, rosters: roster11)

 playerbot12 = Playerbot.create(name: 'Joel', speed: 3, strength: 23, agility: 45,  designation: 'alternate', roster_id: roster12.id, rosters: roster12)


 playerbot13 = Playerbot.create(name: 'Kira Roberts', speed: 3, strength: 22, agility: 45,  designation: 'alternate', roster_id: roster13.id, rosters: roster13)

 playerbot14 = Playerbot.create(name: 'Mauli', speed: 3, strength: 21, agility: 45,  designation: 'alternate', roster_id: roster14.id, rosters: roster14)

 playerbot15 = Playerbot.create(name: 'Jason', speed: 3, strength: 11, agility: 45,  designation: 'alternate', roster_id: roster15.id, rosters: roster15)

 playerbot16 = Playerbot.create(name: 'Ethan', speed: 3, strength: 12, agility: 45,  designation: 'alternate', roster_id: roster16.id, rosters: roster16)

 playerbot17 = Playerbot.create(name: 'Robert', speed: 3, strength: 25, agility: 45,  designation: 'alternate', roster_id: roster17.id, rosters: roster17)


 playerbot18 = Playerbot.create(name: 'Bamby', speed: 3, strength: 34, agility: 45,  designation: 'alternate', roster_id: roster18.id, rosters: roster18) 

 playerbot19 = Playerbot.create(name: 'Daisy', speed: 3, strength: 34, agility: 45,  designation: 'starter', roster_id: roster19.id, rosters: roster19)

 playerbot20 = Playerbot.create(name: 'Omi', speed: 3, strength: 34, agility: 45,  designation: 'starter', roster_id: roster20.id, rosters: roster20)

 playerbot21 = Playerbot.create(name: 'Aish', speed: 3, strength: 34, agility: 45,  designation: 'starter', roster_id: roster21.id, rosters: roster21)
#   Character.create(name: 'Luke', movie: movies.first)
