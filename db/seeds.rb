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
  "Selenium" => "Establish DevOps toolchain",
  "TestCompare Web" => "Establish DevOps toolchain",
  "GitLab" => "Establish DevOps toolchain",
  "Google StackDriver" => "Establish DevOps toolchain",
  "Google Cloud Platform" => "Establish DevOps toolchain",
  "Ansible" => "Establish DevOps toolchain",
  "Docker" => "Establish DevOps toolchain",
  "Microsoft Azure" => "Establish DevOps toolchain",
  "Nexus repository manager" => "Establish DevOps toolchain",
  "DevOps tools for automating development lifecycles" => "Establish DevOps toolchain",
  "Python" => "General-purpose languages",
  "Java" => "General-purpose languages",
  "C/C++" => "General-purpose languages",
  "C#" => "General-purpose languages",
  "R" => "General-purpose languages",
  "Cobol" => "General-purpose languages",
  "Scala" => "General-purpose languages",
  ".NET" => "General-purpose languages",
  "SQL" => "General-purpose languages",
  "Ruby/Rails" => "General-purpose languages",
  "Go" => "General-purpose languages",
  "PHP" => "Script- and Shell languages",
  "JavaScript" => "Script- and Shell languages",
  "JCL" => "Script- and Shell languages",
  "sh" => "Script- and Shell languages",
  "Angular" => "Script- and Shell languages",
  "Vue" => "Script- and Shell languages",
  "React" => "Script- and Shell languages",
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
  "API" => "Systems integration",
  "Microservices architecture" => "Systems integration",
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
  "Jira" => "Work management tools"
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
  'https://res.cloudinary.com/dlsvbebuj/image/upload/v1560948644/skill-m/avatars/avatar_w_15_iian7x.jpg',
  'https://res.cloudinary.com/dlsvbebuj/image/upload/v1561635734/skill-m/avatars/avatar_w_16_hdaif8.jpg',
  'https://res.cloudinary.com/dlsvbebuj/image/upload/v1561635733/skill-m/avatars/avatar_w_17_qguqar.jpg',
  'https://res.cloudinary.com/dlsvbebuj/image/upload/v1561635736/skill-m/avatars/avatar_w_18_ariihh.jpg',
  'https://res.cloudinary.com/dlsvbebuj/image/upload/v1561635735/skill-m/avatars/avatar_w_19_fwis6y.jpg',
  'https://res.cloudinary.com/dlsvbebuj/image/upload/v1561635736/skill-m/avatars/avatar_w_20_azkbyp.jpg',
  'https://res.cloudinary.com/dlsvbebuj/image/upload/v1561635734/skill-m/avatars/avatar_w_21_tguoro.jpg',
  'https://res.cloudinary.com/dlsvbebuj/image/upload/v1561635736/skill-m/avatars/avatar_w_22_rnlu2u.jpg',
  'https://res.cloudinary.com/dlsvbebuj/image/upload/v1561635718/skill-m/avatars/avatar_w_24_vpv4q7.jpg',
  'https://res.cloudinary.com/dlsvbebuj/image/upload/v1561635721/skill-m/avatars/avatar_w_25_gqlh8n.jpg',
  'https://res.cloudinary.com/dlsvbebuj/image/upload/v1561635724/skill-m/avatars/avatar_w_26_yuuwov.jpg',
  'https://res.cloudinary.com/dlsvbebuj/image/upload/v1561635726/skill-m/avatars/avatar_w_27_kdmkrd.jpg',
  'https://res.cloudinary.com/dlsvbebuj/image/upload/v1561635727/skill-m/avatars/avatar_w_28_gi1klr.jpg',
  'https://res.cloudinary.com/dlsvbebuj/image/upload/v1561635729/skill-m/avatars/avatar_w_29_ngukp2.jpg',
  'https://res.cloudinary.com/dlsvbebuj/image/upload/v1561635731/skill-m/avatars/avatar_w_30_tyrn9o.jpg'
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
  'https://res.cloudinary.com/dlsvbebuj/image/upload/v1560948633/skill-m/avatars/avatar_m_15_lrpnuz.jpg',
  'https://res.cloudinary.com/dlsvbebuj/image/upload/v1561635717/skill-m/avatars/avatar_m_16_wshccb.jpg',
  'https://res.cloudinary.com/dlsvbebuj/image/upload/v1561635717/skill-m/avatars/avatar_m_17_bo1qlb.jpg',
  'https://res.cloudinary.com/dlsvbebuj/image/upload/v1561635720/skill-m/avatars/avatar_m_18_n5fwhw.jpg',
  'https://res.cloudinary.com/dlsvbebuj/image/upload/v1561635718/skill-m/avatars/avatar_m_19_yebmk1.jpg',
  'https://res.cloudinary.com/dlsvbebuj/image/upload/v1561635718/skill-m/avatars/avatar_m_20_ybiuka.jpg',
  'https://res.cloudinary.com/dlsvbebuj/image/upload/v1561635722/skill-m/avatars/avatar_m_21_yyi928.jpg',
  'https://res.cloudinary.com/dlsvbebuj/image/upload/v1561635724/skill-m/avatars/avatar_m_22_krswum.jpg',
  'https://res.cloudinary.com/dlsvbebuj/image/upload/v1561635724/skill-m/avatars/avatar_m_23_ozlymf.jpg',
  'https://res.cloudinary.com/dlsvbebuj/image/upload/v1561635726/skill-m/avatars/avatar_m_25_csihjv.jpg',
  'https://res.cloudinary.com/dlsvbebuj/image/upload/v1561635728/skill-m/avatars/avatar_m_26_vbdivw.jpg',
  'https://res.cloudinary.com/dlsvbebuj/image/upload/v1561635729/skill-m/avatars/avatar_m_27_zini7i.jpg',
  'https://res.cloudinary.com/dlsvbebuj/image/upload/v1561635731/skill-m/avatars/avatar_m_28_ztcxri.jpg',
  'https://res.cloudinary.com/dlsvbebuj/image/upload/v1561635731/skill-m/avatars/avatar_m_29_vqczun.jpg',
  'https://res.cloudinary.com/dlsvbebuj/image/upload/v1561635731/skill-m/avatars/avatar_m_30_qtizfe.jpg'
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
  'Classified AR project',
  'Enkelt',
  'Gooda',
  'Gem',
  'Service Desk improvements',
  'CyberIKEA game',
  'Great Furniture AI',
  'Team 404',
  'Personal Data is awesome',
  'Breathtaking project',
  'Robo helper'
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
Skill.destroy_all
Site.destroy_all
SkillCategory.destroy_all
User.destroy_all

puts 'Creating Sites...'

sites_attributes = [
  {
    country: 'Sweden',
    city: 'Helsingborg'
  },
  {
    country: 'Sweden',
    city: 'Malmö'
  },
  {
    country: 'Germany',
    city: 'Dortmund'
  }
]
Site.create!(sites_attributes)

sites = Site.all

puts 'Sites created!'


puts 'Creating Skills and SkillCategories...'

SKILLS.each do |skill, category|
  if SkillCategory.where(name: category).empty?
    skill_category = SkillCategory.create!(name: category)
  else
    skill_category = SkillCategory.where(name: category).first
  end
  Skill.create!(name: skill, description: '', skill_category: skill_category)
end

skills = Skill.all

puts 'Skills and SkillCategories created!'


puts 'Creating Users...'

def create_email(first_name, last_name)
  emails = User.all.map { |user| user.email }
  email = first_name.downcase + '.' + last_name.downcase + '@ingka.ikea.com'
  i = 1
  while emails.include?(email)
    email = "#{first_name.downcase}.#{last_name.downcase}#{i}@ingka.ikea.com"
    i += 1
  end
  return email
end

def create_network_id(first_name, last_name)
  network_ids = User.all.map { |user| user.network_id }
  network_id = first_name[0..1].upcase + last_name[0..2].upcase
  i = 1
  while network_ids.include?(network_id)
    network_id = "#{first_name[0..1].upcase}.#{last_name[0..2].upcase}#{i}"
    i += 1
  end
  return network_id
end

# Creating users for the presentation

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
  remote_photo_url: 'https://res.cloudinary.com/dlsvbebuj/image/upload/v1561564089/skill-m/avatars/avatar_brigitte_bcm4rs.png',
  site: Site.first
)

User.create!(
  email: 'eva.nilsson@ingka.ikea.com',
  password: '1',
  first_name: 'Eva',
  last_name: 'Nilsson',
  network_id: 'ENLS',
  job_title: 'Software Engineer',
  chapter: 'Software Engineering',
  availability: 100,
  is_manager: false,
  manager_id: User.first.id,
  remote_photo_url: 'https://res.cloudinary.com/dlsvbebuj/image/upload/v1561635718/skill-m/avatars/avatar_w_23_zgplas.jpg',
  site: Site.second
)

User.create!(
  email: 'steven.mills@ingka.ikea.com',
  password: '1',
  first_name: 'Steven',
  last_name: 'Mills',
  network_id: 'STML',
  job_title: 'Software Engineer',
  chapter: 'Software Engineering',
  availability: 100,
  is_manager: false,
  manager_id: User.first.id,
  remote_photo_url: 'https://res.cloudinary.com/dlsvbebuj/image/upload/v1561635724/skill-m/avatars/avatar_m_24_rmt1su.jpg',
  site: Site.second
)

# Creating random data

AVATARS_WOMEN.each do |avatar|
  Faker::Config.locale = ['sv', 'de', 'en'].sample
  first_name = Faker::Name.female_first_name
  last_name = Faker::Name.unique.last_name
  email = create_email(first_name, last_name)
  network_id = create_network_id(first_name, last_name)
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

Faker::UniqueGenerator.clear

AVATARS_MEN.each do |avatar|
  Faker::Config.locale = ['sv', 'de', 'en'].sample
  first_name = Faker::Name.male_first_name
  last_name = Faker::Name.unique.last_name
  email = create_email(first_name, last_name)
  network_id = create_network_id(first_name, last_name)
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

Faker::UniqueGenerator.clear

# 30.times do
#   Faker::Config.locale = ['sv', 'de', 'en'].sample
#   first_name = Faker::Name.first_name
#   last_name = Faker::Name.unique.last_name
#   email = create_email(first_name, last_name)
#   network_id = create_network_id(first_name, last_name)
#   User.create!(
#     email: email,
#     password: '1',
#     first_name: first_name,
#     last_name: last_name,
#     network_id: network_id,
#     job_title: 'Software Engineer',
#     chapter: 'Software Engineering',
#     availability: 100,
#     is_manager: false,
#     manager_id: User.first.id,
#     remote_photo_url: "https://res.cloudinary.com/dlsvbebuj/image/upload/v1561036263/skill-m/avatars/avatar_placeholder_pr7mik.jpg",
#     site: Site.all.sample
#   )
# end

# Faker::UniqueGenerator.clear

puts 'Users created!'

users = User.all.reject { |user| user.job_title == 'Chapter Lead' || user.network_id == 'STML' || user.network_id == 'ENLS' }

puts 'Creating UserSkills...'

def create_user_skill(user, user_skill, self_assessment, self_comment, manager_assessment, manager_comment, experience)
  UserSkill.create!(
    user: user,
    skill: user_skill,
    self_assessment: self_assessment,
    self_comment: self_comment,
    manager_assessment: manager_assessment,
    manager_comment: manager_comment,
    experience: experience
  )
end

# Creating random data

users.each do |user|
  user_skills = skills.sample(Random.new.rand(5..12))
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
    self_comment = Faker::GreekPhilosophers.quote
    experience = "#{Random.new.rand(2..12)} months"
    create_user_skill(user, user_skill, self_assessment, self_comment, manager_assessment, manager_comment, experience)
  end
end

# Creating user_skills for the presentation

eva_skills = [
  [
    Skill.where(name: 'Python')[0],
    4,
    "I have 10 years of Python experience from both personal and professional projects. The latest project I worked on is called ‘Will it fit’, which calculates the amount of items IKEA customers can fit in their cars.",
    "10 years"
  ],
  [
    Skill.where(name: 'C#')[0],
    5,
    "I wrote my master’s thesis on how to improve parsing in C# systems, and have been working with it on a daily basis in various projects ranging from IoT to finance.",
    "5 years"
  ],
  [
    Skill.where(name: 'Go')[0],
    3,
    "I have been working with Go for the past 2 years on a nearly daily basis in my previous company, setting up a new system to match drivers to riders.",
    "2 years"
  ]
]

steven_skills = [
  [
    Skill.where(name: 'API')[0],
    4,
    "I worked intensively with APIs for 2 years in the Performance Monitoring team
Automated testing skills",
    "2 years"
  ],
  # [
  #   Skill.where(name: 'Angular')[0],
  #   1,
  #   "I just completed an online course on Angular and feel like I have a basic understanding, can’t wait to put it into practice!",
  #   "6 months",
  # ],
  [
    Skill.where(name: 'Automated testing')[0],
    2,
    "During the last year, we have started to implement automated testing.",
    "2 years"
  ]
]

eva_skills.each do |skill|
  create_user_skill(User.where(network_id: 'ENLS')[0], skill[0], skill[1], skill[2], skill[1], 'Agree with self-assessment', skill[3])
end

steven_skills.each do |skill|
  create_user_skill(User.where(network_id: 'STML')[0], skill[0], skill[1], skill[2], skill[1], 'Agree with self-assessment', skill[3])
end

puts 'UserSkills created!'


puts 'Creating Teams, TeamRoles and TeamRoleSkills...'

def create_team_role_skills(team_role)
  Random.new.rand(3..8).times do
    TeamRoleSkill.create!(
      skill: Skill.all.sample,
      team_role: team_role
    )
  end
end

def create_team_role(team_role_names, occupancy, team_specialist, team)
  TeamRole.create!(
    name: team_role_names.sample,
    occupancy: occupancy,
    user: team_specialist,
    team: team
  )
end

specialistst = users.clone
team_names = TEAM_NAMES.clone
team_role_names = TEAM_ROLE_NAMES.clone

until specialistst.empty? || team_names.empty?
  team_name = team_names.sample
  team = Team.create!(
    name: team_name,
    description: Faker::Hacker.say_something_smart,
    owner_contact: Faker::Name.unique.name,
    team_manager: User.first,
    site: sites.sample
  )

  specialists_count = Random.new.rand(2..6)
  if specialistst.size > specialists_count
    team_specialists = specialistst.sample(specialists_count)
  else
    team_specialists = specialistst
  end

  # Seeding other roles and skills
  team_specialists.each do |team_specialist|
    # if Random.new.rand(1..10) == 10 # 10% chance that specialist will get 2 roles
    #   occupancy = 50
    #   team_role = create_team_role(team_role_names, occupancy, team_specialist, team)
    #   create_team_role_skills(team_role)
    #   team_role = create_team_role(team_role_names, occupancy, team_specialist, Team.all.sample)
    # else
      Random.new.rand(1..5) == 5 ? occupancy = 80 : occupancy = 100 # 20% chance that specialist will get 80% occupancy
      team_role = create_team_role(team_role_names, occupancy, team_specialist, team)
    # end
    create_team_role_skills(team_role)
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
