# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
users_attributes = [
  {
    email: 'meg@griffin.com',
    password: '111111',
    first_name: 'Meg',
    last_name: 'Griffin',
    network_ID: 'meggri2',
    job_title: 'Developer',
    chapter: 'Development Pipeline'
    availability: 'id1',
    is_manager: false,
    photo: "meg.jpg"
  }
]


skills_attributes = [
  {
name: 'excellent at front-end JS'
description: '3 years of working experience as UX dev in DevOps team'
  }
]

skill_categories_attributes = ['JavaScript', 'Ruby', 'React', 'front-end', 'back-end', 'Scrum']
