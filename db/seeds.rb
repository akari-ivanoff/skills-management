# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all

users_attributes = [
  {
    email: 'meg@griffin.com',
    password: '111111',
    first_name: 'Meg',
    last_name: 'Griffin',
    network_ID: 'meggri2',
    job_title: 'Software Engineer',
    chapter: 'Software Engineering'
    availability: '100%',
    is_manager: true,
    photo: "meg.jpg"
  },
  {
    email: 'homer@simpson.com',
    password: '111111',
    first_name: 'Homer',
    last_name: 'Simpson',
    network_ID: 'hosim1',
    job_title: 'DevOps Engineer',
    chapter: 'Development Pipeline'
    availability: '50%',
    is_manager: false,
    photo: "homer.jpg"
  },
  {
    email: 'peter@griffin.com',
    password: '111111',
    first_name: 'Peter',
    last_name: 'Griffin',
    network_ID: 'pegrif11',
    job_title: 'Data Scientist',
    chapter: 'Data Science'
    availability: '80%',
    is_manager: false,
    photo: "peter.jpg"
  }
]

puts 'Creating Users...'
User.create!(users_attributes)
users = User.all
puts 'Users created'



skill_categories = ['JavaScript', 'Ruby', 'React', 'front-end', 'back-end', 'Scrum']

skills_attributes = [
  {
    name: 'excellent at front-end JS',
    description: '3 years of working experience as UX dev in DevOps team'
    category: skill_categories.sample(1)
  }
]

puts 'Creating Skills...'
Skill.create!(skills_attributes)
skills = Skill.all
puts 'Skills created'


user_skills_attributes = [
  {
    self_assessment: 4,
    manager_assessment: 3,
    self_comment: 'great',
    manager_comment: 'quite ok'
    experience: 'what do we use this field for?'
  }
]


sites_attributes = [
  {
    country: 'Sweden'
    city: 'Helsingborg'
  },
  {
    country: 'Germany'
    city: 'Dortmund'
  },
  {
    country: 'Sweden'
    city: 'Malmö'
  }
]


teams_attributes = [
  {
    name: 'Recommendation Engine'
    description: 'this product team works on the product recommendation engine on IKEA website.'
    owner_contact: 'Tim'
  },
  {
    name: 'Optimize CDC Flow'
    description: 'this product team works on optimizing flows in the CDCs'
    owner_contact: 'Ed'
  }
]




