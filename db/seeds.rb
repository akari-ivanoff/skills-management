# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#
# require 'pry-byebug'

SKILLS = {
  "Automated testing" => "Automated testing",
  "JMeter" => "Automated testing",
  "Continuous deployment" => "Continuous deployment",
  "Automated infrastructure provisioning" => "Automated infrastructure provisioning",
  "Continuous monitoring & automatic operations" => "Continuous monitoring & automatic operations",
  "Data integration and lineage" => "Data integration and lineage",
  "Exploratory data analysis environments" => "Exploratory data analysis (EDA) environment",
  "Experiment management" => "Experiment management",
  "Designing and carrying out secure automation processes" => "Secure automation processes",
  "Jenkins" => "Establish DevOps toolchain",
  "Spinnaker" => "Establish DevOps toolchain",
  "AWS Code Deploy" => "Establish DevOps toolchain",
  "Selenium" => "Establish DevOps toolchain",
  "TestCompare Web" => "Establish DevOps toolchain",
  "GitLab" => "Establish DevOps toolchain",
  "AWS CloudWatch" => "Establish DevOps toolchain",
  "Google StackDriver" => "Establish DevOps toolchain",
  "Google Cloud Platform" => "Establish DevOps toolchain",
  "Ansible" => "Establish DevOps toolchain",
  "Docker" => "Establish DevOps toolchain",
  "Microsoft Azure" => "Establish DevOps toolchain",
  "Nexus repository manager" => "Establish DevOps toolchain",
  "DevOps tools for automating development lifecycles" => "Establish DevOps toolchain",
  "Python" => "General-purpose languages",
  "Java" => "General-purpose languages",
  "C/C++/C#" => "General-purpose languages",
  "R" => "General-purpose languages",
  "Cobol" => "General-purpose languages",
  "Scala" => "General-purpose languages",
  ".NET" => "General-purpose languages",
  "SQL" => "General-purpose languages",
  "Ruby/Rails" => "General-purpose languages",
  "PHP" => "Script- and Shell languages",
  "JavaScript" => "Script- and Shell languages",
  "JCL" => "Script- and Shell languages",
  "sh" => "Script- and Shell languages",
  "HTML" => "Web languages",
  "CSS" => "Web languages",
  "XML" => "Web languages",
  "Kotlin" => "Languages for mobile environments",
  "Dart" => "Languages for mobile environments",
  "Java ADK" => "Languages for mobile environments",
  "Swift" => "Languages for mobile environments",
  "Xcode" => "Languages for mobile environments",
  "Hadoop" => "Big data tools & techniques",
  "Hive" => "Big data tools & techniques",
  "Spark" => "Big data tools & techniques",
  "AirFlow" => "Big data tools & techniques",
  "Tools for big data processing" => "Big data tools & techniques",
  "Bitbucket" => "Version control",
  "Github" => "Version control",
  "Version control software" => "Version control",
  "Regression and classification" => "Predictive modelling",
  "Linear and non-linear modelling" => "Predictive modelling",
  "Decision trees models" => "Predictive modelling",
  "Fuzzy inference" => "Predictive modelling",
  "Bayesian statistics" => "Predictive modelling",
  "Makarov chains and time series" => "Predictive modelling",
  "Support vector machines" => "Predictive modelling",
  "Linear / integer programming" => "Optimisation",
  "Stochastic / non linear modelling" => "Optimisation",
  "Factorial design" => "Optimisation",
  "Combinatorics" => "Optimisation",
  "Optimal control" => "Optimisation",
  "Multi criteria modelling" => "Optimisation",
  "Simulation / Monte Carlo simulations" => "Simulation / visualisation / experimentation",
  "Martingales" => "Simulation / visualisation / experimentation",
  "Queueing theory" => "Simulation / visualisation / experimentation",
  "Game theory" => "Simulation / visualisation / experimentation",
  "Language / image analysis" => "Simulation / visualisation / experimentation",
  "Swarm genetic / Simulated annealing" => "Deep / machine learning",
  "Random forest / Gradient boosting " => "Deep / machine learning",
  "Artificial neural networks" => "Deep / machine learning",
  "Reinforcement learning" => "Deep / machine learning",
  "Test driven development" => "Software engineering practices",
  "Code versioning" => "Software engineering practices",
  "Collaborative development" => "Software engineering practices",
  "Sustainable source code managing" => "Software engineering practices",
  "Visual Studio Visual Studio" => "Integrated development environments (IDE)",
  "Visual Studio Code" => "Integrated development environments (IDE)",
  "PyCharm" => "Integrated development environments (IDE)",
  "IntelliJ Idea" => "Integrated development environments (IDE)",
  "Spyder" => "Integrated development environments (IDE)",
  "OpenAPI" => "Systems integration",
  "API/Microservices architecture" => "Systems integration",
  "Message-oriented integration" => "Systems integration",
  "Enterprise service bus (ESB) concepts" => "Systems integration",
  "UX/UI engineering for Mac OS platform desktop environment" => "UX/UI",
  "UX/UI engineering for Windows platform desktop environment" => "UX/UI",
  "UX/UI engineering for Android mobile environment" => "UX/UI",
  "UX/UI engineering for iOS mobile environment" => "UX/UI",
  "UX/UI engineering for home appliance applications" => "UX/UI",
  "UX/UI engineering for VR and/or AR design" => "UX/UI",
  "Scrum" => "Agile methodology",
  "KanBan" => "Agile methodology",
  "DevOps methods and processes" => "DevOps methodology",
  "Asana" => "Work management tools",
  "Jira" => "Work management tools",
  "Trello" => "Work management tools"
}

AVATARS_WOMEN = [
  'https://res.cloudinary.com/dlsvbebuj/image/upload/v1560948632/skill-m/avatars/avatar_w_1_esamy8.jpg',
  'https://res.cloudinary.com/dlsvbebuj/image/upload/v1560948633/skill-m/avatars/avatar_w_2_auwlfd.jpg',
  'https://res.cloudinary.com/dlsvbebuj/image/upload/v1560948635/skill-m/avatars/avatar_w_3_hbuwkz.jpg',
  'https://res.cloudinary.com/dlsvbebuj/image/upload/v1560948637/skill-m/avatars/avatar_w_4_z0gxdp.jpg',
  'https://res.cloudinary.com/dlsvbebuj/image/upload/v1560948637/skill-m/avatars/avatar_w_5_hexzyd.jpg',
  'https://res.cloudinary.com/dlsvbebuj/image/upload/v1560948635/skill-m/avatars/avatar_w_6_h8xaeh.jpg',
  'https://res.cloudinary.com/dlsvbebuj/image/upload/v1560948640/skill-m/avatars/avatar_w_7_mzu1pf.jpg',
  'https://res.cloudinary.com/dlsvbebuj/image/upload/v1560948639/skill-m/avatars/avatar_w_8_txhhuq.jpg',
  'https://res.cloudinary.com/dlsvbebuj/image/upload/v1560948640/skill-m/avatars/avatar_w_9_v9ziyt.jpg',
  'https://res.cloudinary.com/dlsvbebuj/image/upload/v1560948638/skill-m/avatars/avatar_w_10_otxh6l.jpg',
  'https://res.cloudinary.com/dlsvbebuj/image/upload/v1560948637/skill-m/avatars/avatar_w_11_lfyriy.jpg',
  'https://res.cloudinary.com/dlsvbebuj/image/upload/v1560948639/skill-m/avatars/avatar_w_12_ts9rml.jpg',
  'https://res.cloudinary.com/dlsvbebuj/image/upload/v1560948643/skill-m/avatars/avatar_w_13_bpxvqc.jpg',
  'https://res.cloudinary.com/dlsvbebuj/image/upload/v1560948642/skill-m/avatars/avatar_w_14_l5ebyq.jpg',
  'https://res.cloudinary.com/dlsvbebuj/image/upload/v1560948644/skill-m/avatars/avatar_w_15_iian7x.jpg'
]
AVATARS_MEN = [
  'https://res.cloudinary.com/dlsvbebuj/image/upload/v1560948623/skill-m/avatars/avatar_m_1_vp6wzr.jpg',
  'https://res.cloudinary.com/dlsvbebuj/image/upload/v1560948625/skill-m/avatars/avatar_m_2_n9atqe.jpg',
  'https://res.cloudinary.com/dlsvbebuj/image/upload/v1560948624/skill-m/avatars/avatar_m_3_zdfrek.jpg',
  'https://res.cloudinary.com/dlsvbebuj/image/upload/v1560948625/skill-m/avatars/avatar_m_4_d8k4mr.jpg',
  'https://res.cloudinary.com/dlsvbebuj/image/upload/v1560948626/skill-m/avatars/avatar_m_5_hpqf6v.jpg',
  'https://res.cloudinary.com/dlsvbebuj/image/upload/v1560948629/skill-m/avatars/avatar_m_6_v2oti8.jpg',
  'https://res.cloudinary.com/dlsvbebuj/image/upload/v1560948627/skill-m/avatars/avatar_m_7_cb8xms.jpg',
  'https://res.cloudinary.com/dlsvbebuj/image/upload/v1560948625/skill-m/avatars/avatar_m_8_zs6kpt.jpg',
  'https://res.cloudinary.com/dlsvbebuj/image/upload/v1560948626/skill-m/avatars/avatar_m_9_uplyzn.jpg',
  'https://res.cloudinary.com/dlsvbebuj/image/upload/v1560948627/skill-m/avatars/avatar_m_10_uhpfod.jpg',
  'https://res.cloudinary.com/dlsvbebuj/image/upload/v1560948628/skill-m/avatars/avatar_m_11_gadvwv.jpg',
  'https://res.cloudinary.com/dlsvbebuj/image/upload/v1560948632/skill-m/avatars/avatar_m_12_uo9t9c.jpg',
  'https://res.cloudinary.com/dlsvbebuj/image/upload/v1560948633/skill-m/avatars/avatar_m_13_bze7n4.jpg',
  'https://res.cloudinary.com/dlsvbebuj/image/upload/v1560948632/skill-m/avatars/avatar_m_14_jz3zpc.jpg',
  'https://res.cloudinary.com/dlsvbebuj/image/upload/v1560948633/skill-m/avatars/avatar_m_15_lrpnuz.jpg'
]

TEAM_NAMES = [
  'Bug bounty',
  'Crypto payments',
  'Perfomance Monitoring',
  'OW Security',
  'Skill-M',
  'Will it fit?',
  'Easy Assembly',
  'EV Slide',
  'IKEA Together',
  'Classified AR project'
]

TEAM_ROLE_NAMES = [
  'Scrum master',
  'DevOps Engineer',
  'Senior UX/UI iOS developer',
  'UX/UI iOS developer',
  'Senior UX/UI Android developer',
  'UX/UI Android developer',
  'Senior UX/UI VR/AR developer',
  'UX/UI VR/AR developer',
  'Senior Java developer',
  'Java developer',
  'Senior Go developer',
  'Go developer',
  'Senior .NET developer',
  '.NET developer',
  'Senior JS developer',
  'JS developer',
  'Senior Ruby/Rails developer',
  'Ruby/Rails developer',
  'Senior web developer',
  'web developer',
  'Senior Python developer',
  'Python developer',
  'Senior Python developer',
  'Python developer'
]

puts "Seeding mock data..."
TeamRoleSkill.destroy_all
UserSkill.destroy_all
TeamRole.destroy_all
Team.destroy_all
User.destroy_all
Skill.destroy_all
Site.destroy_all
SkillCategory.destroy_all

puts 'Creating Sites...'

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

puts 'Sites created!'

sites = Site.all

puts 'Creating Skills and SkillCategories...'

SKILLS.each do |skill, category|
  if SkillCategory.where(name: category).empty?
    skill_category = SkillCategory.create!(name: category)
  else
    skill_category = SkillCategory.where(name: category).first
  end
  Skill.create!(name: skill, description: '', skill_category: skill_category)
end

puts 'Skills and SkillCategories created!'

skills = Skill.all

puts 'Creating Users...'

User.create!(
  email: 'brigitte.lindholm@ingka.ikea.com',
  password: '1',
  first_name: 'Brigitte',
  last_name: 'Lindholm',
  network_id: 'BRIG',
  job_title: 'Chapter Lead',
  chapter: 'Software Engineering',
  availability: 100,
  is_manager: true,
  remote_photo_url: 'https://res.cloudinary.com/dlsvbebuj/image/upload/v1560948621/skill-m/avatars/avatar_cl_u6wolw.jpg',
  site: Site.first
)

AVATARS_WOMEN.each do |avatar|
  Faker::Config.locale = ['sv', 'de', 'en'].sample
  first_name = Faker::Name.female_first_name
  last_name = Faker::Name.last_name
  email = first_name.downcase + '.' + last_name.downcase + '@ingka.ikea.com'
  network_id = first_name[0..1].upcase + last_name[0..2].upcase
  User.create!(
    email: email,
    password: '1',
    first_name: first_name,
    last_name: last_name,
    network_id: network_id,
    job_title: 'Software Engineer',
    chapter: 'Software Engineering',
    availability: 100,
    is_manager: false,
    manager_id: User.first.id,
    remote_photo_url: avatar,
    site: sites.sample
  )
end

AVATARS_MEN.each do |avatar|
  Faker::Config.locale = ['sv', 'de', 'en'].sample
  first_name = Faker::Name.male_first_name
  last_name = Faker::Name.last_name
  email = first_name.downcase + '.' + last_name.downcase + '@ingka.ikea.com'
  network_id = first_name[0..1].upcase + last_name[0..2].upcase
  User.create!(
    email: email,
    password: '1',
    first_name: first_name,
    last_name: last_name,
    network_id: network_id,
    job_title: 'Software Engineer',
    chapter: 'Software Engineering',
    availability: 100,
    is_manager: false,
    manager_id: User.first.id,
    remote_photo_url: avatar,
    site: Site.all.sample
  )
end

20.times do
  Faker::Config.locale = ['sv', 'de', 'en'].sample
  first_name = Faker::Name.first_name
  last_name = Faker::Name.last_name
  email = first_name.downcase + '.' + last_name.downcase + '@ingka.ikea.com'
  network_id = first_name[0..1].upcase + last_name[0..2].upcase
  User.create!(
    email: email,
    password: '1',
    first_name: first_name,
    last_name: last_name,
    network_id: network_id,
    job_title: 'Software Engineer',
    chapter: 'Software Engineering',
    availability: 100,
    is_manager: false,
    manager_id: User.first.id,
    site: Site.all.sample
  )
end

puts 'Users created!'

users = User.all.reject { |user| user.job_title == 'Chapter Lead' }

puts 'Creating UserSkills...'

users.each do |user|
  user_skills = skills.sample(Random.new.rand(3..10))
  user_skills.each do |user_skill|
    self_assessment = Random.new.rand(1..5)
    if Random.new.rand(1..4) == 4   # 25% chance that manager_assessment will not be the same as self_assessment
      if self_assessment == 1
        manager_assessment = self_assessment + 1
      elsif self_assessment == 5
        manager_assessment = self_assessment - 1
      else
        manager_assessment = [self_assessment - 1, self_assessment + 1].sample
      end
      manager_comment = "Let's discuss this assessment together"
    else
      manager_assessment = self_assessment
      manager_comment = 'Agree with self-assessment'
    end
    UserSkill.create!(
      user: user,
      skill: user_skill,
      self_assessment: self_assessment,
      self_comment: Faker::GreekPhilosophers.quote,
      manager_assessment: manager_assessment,
      manager_comment: manager_comment,
      experience: "#{Random.new.rand(2..12)} months"
    )
  end
end

puts 'UserSkills created!'

sites = Site.all
skills = Skill.all
users = User.all.reject { |user| user.job_title == 'Chapter Lead' }

puts 'Creating Teams, TeamRoles and TeamRoleSkills...'

specialistst = users
team_names = TEAM_NAMES.clone
team_role_names = TEAM_ROLE_NAMES.clone

until specialistst.empty? || team_names.empty?
  team_name = team_names.sample
  team = Team.create!(
    name: team_name,
    description: Faker::Hacker.say_something_smart,
    owner_contact: Faker::Name.unique.name,
    team_manager: users.first,
    site: sites.sample
  )

  specialists_count = Random.new.rand(2..6)
  if specialistst.size > specialists_count
    team_specialists = specialistst.sample(specialists_count)
  else
    team_specialists = specialistst
  end

  # Every team should have a Scrum master
  TeamRole.create!(
    name: team_role_names.first,
    occupancy: 100,
    user: team_specialists.first,
    team: team
  )
  team_role_names.delete_at(0)
  team_specialists.delete_at(0)

  # Seeding other roles and skills
  team_specialists.each do |team_specialist|
    if Random.new.rand(1..4) == 4 # 25% chance that specialist will get 2 roles
      2.times do
        team_role = TeamRole.create!(
          name: team_role_names.sample,
          occupancy: 50,
          user: team_specialist,
          team: team
        )
        Random.new.rand(3..8).times do
          TeamRoleSkill.create!(
            skill: skills.sample,
            team_role: team_role
          )
        end
      end
    else
      team_role = TeamRole.create!(
        name: team_role_names.sample,
        occupancy: 100,
        user: team_specialist,
        team: team
      )
      Random.new.rand(3..8).times do
        TeamRoleSkill.create!(
          skill: skills.sample,
          team_role: team_role
        )
      end
    end
  end

  # Seeding empty roles and skills
  Random.new.rand(0..2).times do
    team_role = TeamRole.create!(
      name: team_role_names.sample,
      occupancy: 100,
      team: team
    )
    Random.new.rand(3..8).times do
      TeamRoleSkill.create!(
        skill: skills.sample,
        team_role: team_role
      )
    end
  end

  team_names.delete(team_name)
  specialistst -= team_specialists
end

puts 'Teams, TeamRoles and TeamRoleSkills created!'
