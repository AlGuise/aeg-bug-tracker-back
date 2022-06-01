puts "🌱 Seeding start!"

puts "Seeding users..."

user1 = User.create(
  user_name: "AlGuise",
  password: "adminpassword",
  email: "admin@aegbugtracker.com",
  first_name: "Alain",
  last_name: "Giessel"
)

user2 = User.create(
  user_name: "StephentheMan",
  password: "pmpassword1",
  email: "pm1@aegbugtracker.com",
  first_name: "Stephen",
  last_name: "Lambert"
)

user3 = User.create(
  user_name: "Nikki",
  password: "swefpassword1",
  email: "front1@aegbugtracker.com",
  first_name: "Nicole",
  last_name: "Page"
)

user4 = User.create(
  user_name: "JustAskSam",
  password: "swebpassword1",
  email: "back1@aegbugtracker.com",
  first_name: "Sam",
  last_name: "Waters",
)

user5 = User.create(
  user_name: "Alexis",
  password: "pmpassword2",
  email: "pm2@aegbugtracker.com",
  first_name: "Alexia",
  last_name: "Velador"
)

user6 = User.create(
  user_name: "Thea",
  password: "swefpassword2",
  email: "front2@aegbugtracker.com",
  first_name: "Althea",
  last_name: "John"
)

user7 = User.create(
  user_name: "ArmBuster",
  password: "swedpassword2",
  email: "back2@aegbugtracker.com",
  first_name: "Daniel",
  last_name: "Armbruster"
)

puts "Seeding roles..."

role1 = Role.create(
  user_id: user1.id,
  role_title: "System Admin"
)

role2 = Role.create(
  user_id: user2.id,
  role_title: "Project Manager"
)

role3 = Role.create(
  user_id: user3.id,
  role_title: "SWE - FrontEnd"
)

role4 = Role.create(
  user_id: user4.id,
  role_title: "SWE - BackEnd"
)

role5 = Role.create(
  user_id: user5.id,
  role_title: "Project Manager"
)

role6 = Role.create(
  user_id: user6.id,
  role_title: "SWE - FrontEnd"
)

role7 = Role.create(
  user_id: user7.id,
  role_title: "SWE - BackEnd"
)

puts "Seeding teams..."

team1 = Team.create(
  name: "Team TV Room"
)

team2 = Team.create(
  name: "Team Conference Room"
)

puts "Seeding projects..."

project1 = Project.create(
  team_id: team1.id,
  name: "AEG Bug Tracker",
  deadline: "May 31st, 2022",
  created_by: user1.user_name
)

project2 = Project.create(
  team_id: team2.id,
  name: "Coffee High Website",
  deadline: "June 12th, 2022",
  created_by: user1.user_name
)

project3 = Project.create(
  team_id: team2.id,
  name: "Personal Website",
  deadline: "June 3rd, 2022",
  created_by: user1.user_name
)

puts "Seeding tickets..."

ticket1 = Ticket.create(
  priority: "Immediate",
  cat: "Feature Add/Delete - Backend",
  description: "Create Serializers",
  status: 1,
  submitted_by: user2.user_name,
  project_id: project1.id,
  user_id: user2.id
)

ticket2 = Ticket.create(
  priority: "Immediate",
  cat: "Feature Add/Delete - Frontend",
  description: "Create Frontend Shell",
  status: 1,
  submitted_by: user1.user_name,
  project_id: project1.id,
  user_id: user1.id
)

ticket3 = Ticket.create(
  priority: "High",
  cat: "Feature Update - Frontend",
  description: "Update Style CSS",
  status: 1,
  submitted_by: user2.user_name,
  project_id: project1.id,
  user_id: user2.id
)

ticket4 = Ticket.create(
  priority: "Average",
  cat: "Feature Update - Frontend",
  description: "Change Hamburger Dropdown to onclick",
  status: 1,
  submitted_by: user5.user_name,
  project_id: project2.id,
  user_id: user5.id
)

ticket5 = Ticket.create(
  priority: "Low",
  cat: "Bug Fix - Backend",
  description: "test Clover endpoints",
  status: 1,
  submitted_by: user5.user_name,
  project_id: project2.id,
  user_id: user5.id
)

ticket6 = Ticket.create(
  priority: "Average",
  cat: "Feature Add/Delete - Frontend",
  description: "Create fetches to Clover endpoints",
  status: 1,
  submitted_by: user7.user_name,
  project_id: project2.id,
  user_id: user7.id
)

ticket7 = Ticket.create(
  priority: "Average",
  cat: "Feature Update - Frontend",
  description: "Change background to logo",
  status: 1,
  submitted_by: user6.user_name,
  project_id: project2.id,
  user_id: user6.id
)

ticket8 = Ticket.create(
  priority: "Average",
  cat: "Feature Update - Frontend",
  description: "Change Hamburger Dropdown to onclick",
  status: 1,
  submitted_by: user1.user_name,
  project_id: project3.id,
  user_id: user1.id
)

ticket9 = Ticket.create(
  priority: "Immediate",
  cat: "Feature Add/Delete - Frontend",
  description: "Create Blog Posts",
  status: 1,
  submitted_by: user1.user_name,
  project_id: project3.id,
  user_id: user1.id
)

ticket10 = Ticket.create(
  priority: "High",
  cat: "Feature Update - Frontend",
  description: "Style /myblogs page",
  status: 1,
  submitted_by: user1.user_name,
  project_id: project3.id,
  user_id: user1.id
)

puts "Seeding user_teams..."

user_team1 = UserTeam.create(
  user_id: user1.id,
  team_id: team1.id
)

user_team2 = UserTeam.create(
  user_id: user1.id,
  team_id: team2.id
)

user_team3 = UserTeam.create(
  user_id: user2.id,
  team_id: team1.id
)

user_team4 = UserTeam.create(
  user_id: user3.id,
  team_id: team1.id
)

user_team5 = UserTeam.create(
  user_id: user4.id,
  team_id: team1.id
)

user_team6 = UserTeam.create(
  user_id: user5.id,
  team_id: team2.id
)

user_team7 = UserTeam.create(
  user_id: user6.id,
  team_id: team2.id
)

user_team8 = UserTeam.create(
  user_id: user7.id,
  team_id: team2.id
)

puts "Seeding Complete!"