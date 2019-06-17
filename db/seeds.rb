# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
TeamRoleSkill.destroy_all
UserTeamRole.destroy_all
UserSkill.destroy_all
TeamRole.destroy_all
Team.destroy_all
User.destroy_all
Skill.destroy_all
Site.destroy_all
SkillCategory.destroy_all
sites_attributes = [
  {
    country: 'Sweden',
    city: 'Helsingborg'
  },
  {
    country: 'Germany',
    city: 'Dortmund'
  },
  {
    country: 'Sweden',
    city: 'Malmö'
  }
]
Site.create!(sites_attributes)
puts 'Creating Sites...'
sites = Site.all
helsingborg = Site.first
dortmund = Site.second
malmo = Site.third
puts 'Sites created'



users_attributes = [
  {
    email: 'meg@griffin.com',
    password: '111111',
    first_name: 'Meg',
    last_name: 'Griffin',
    network_id: 'meggri2',
    job_title: 'Software Engineer',
    chapter: 'Software Engineering',
    availability: 100,
    is_manager: true,
    photo: "meg.jpg",
    site: Site.first
  },
  {
    email: 'homer@simpson.com',
    password: '111111',
    first_name: 'Homer',
    last_name: 'Simpson',
    network_id: 'hosim1',
    job_title: 'DevOps Engineer',
    chapter: 'Development Pipeline',
    availability: 50,
    is_manager: false,
    photo: "homer.jpg",
    site: Site.first
  },
  {
    email: 'peter@griffin.com',
    password: '111111',
    first_name: 'Peter',
    last_name: 'Griffin',
    network_id: 'pegrif11',
    job_title: 'Data Scientist',
    chapter: 'Data Science',
    availability: 80,
    is_manager: false,
    photo: "peter.jpg",
    site: Site.last
  }
]

puts 'Creating Users...'
User.create!(users_attributes)
users = User.all
meg = User.first
homer = User.second
peter = User.third
puts 'Users created'



skill_category_attributes = [
  {
    name:'Establish DevOps toolchain'
  },
  {
    name:'General-purpose languages'
  },
  {
    name:'Script- and Shell languages'
  },
  {
    name:'Web languages'
  },
  {
    name:'Languages for mobile environments'
  },
  {
    name:'Other'
  }
]

SkillCategory.create!(skill_category_attributes)

skills_attributes = [

  {
    name: 'Git',
    description: '',
    skill_category: SkillCategory.first
  },
  {
    name: 'Ruby',
    description: '',
    skill_category: SkillCategory.second
  },
  {
    name: 'JavaScript',
    description: '',
    skill_category: SkillCategory.third
  },
  {
    name: 'HTML',
    description: '',
    skill_category: SkillCategory.fourth
  },
  {
    name: '.NET',
    description: '',
    skill_category: SkillCategory.last
  }
]

puts 'Creating Skills...'
Skill.create!(skills_attributes)
skills = Skill.all
javascript = Skill.first
python = Skill.second
puts 'Skills created'



user_skills_attributes = [
  {
    self_assessment: 4,
    manager_assessment: 3,
    self_comment: 'great',
    manager_comment: 'quite ok',
    experience: '3 years of working experience as UX dev in DevOps team',
    user: homer,
    skill: javascript
  }
]

puts 'Creating UserSkills...'
UserSkill.create!(user_skills_attributes)
user_skills = UserSkill.all
puts 'User-Skills created'



teams_attributes = [
  {
    name: 'Recommendation Engine',
    description: 'this product team works on the product recommendation engine on IKEA website.',
    owner_contact: 'Tim',
    site: helsingborg,
    manager: meg
  },
  {
    name: 'Optimize CDC Flow',
    description: 'this product team works on optimizing flows in the CDCs',
    owner_contact: 'Ed',
    site: dortmund,
    manager: homer
  }
]


puts 'Creating Teams...'
Team.create!(teams_attributes)
teams = Team.all
recommendation_engine = Team.first
optimize_flow = Team.second
puts 'Teams created'



team_roles_attributes = [
  {
    name: 'Recommendation Engine team needs 1 senior UX specialist, pref Ruby & JS',
    team: recommendation_engine,
    occupancy: 1,
  },
    {
    name: 'Optimize CDC flow team needs 2 junior backend dev Python',
    team: optimize_flow,
    occupancy: 2,
  }
]

puts 'Creating Team Roles...'
TeamRole.create!(team_roles_attributes)
team_roles = TeamRole.all
rec_eng_team_role = TeamRole.first
opt_flow_team_role = TeamRole.second
puts 'Team Roles created'



user_team_roles_attributes = [
  {
    team_role: rec_eng_team_role,
    user: homer
  },
  {
    team_role: opt_flow_team_role,
    user: peter
  }

]

puts 'Creating User Team Roles...'
UserTeamRole.create!(user_team_roles_attributes)
user_team_roles = UserTeamRole.all
puts 'User Team Roles created'

team_role_skills_attributes = [
  {
    skill: python,
    team_role: opt_flow_team_role
  }
]

puts 'Creating Team Role Skills...'
TeamRoleSkill.create!(team_role_skills_attributes)
team_role_skills = TeamRoleSkill.all
puts 'Team Role Skills created'
