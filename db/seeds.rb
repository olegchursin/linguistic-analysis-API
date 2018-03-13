# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# USERS
oleg = User.create(username: "olegchursin", email: "olegchursin@gmail.com", password: "password")
steven = User.create(username: "steven", email: "steven@gmail.com", password: "password")

# PROJECTS
projects_list = [
  ["Human Interaction", "Copy for a digital media and web development company.", oleg],
  ["Flatiron School", "Social media presence analysis for a leading NYC web development boot camp.", steven]
]

# LEXEMES
lexemes_list = [
  ["linguistics", "UI", "communication", "identity", "website"],
  ["developer", "coding", "bootcamp", "software", "javascript"]
]

# TEXTS
texts_list = [
  {title: "Natural Language Processing", content: "Natural-language processing (NLP) is an area of computer science and artificial intelligence concerned with the interactions between computers and human (natural) languages, in particular how to program computers to fruitfully process large amounts of natural language data.\nChallenges in natural-language processing frequently involve speech recognition, natural-language understanding, and natural-language generation."},
  {title: "Best Coding Bootcamp in NYC", content: "Flatiron School offers a 15-week immersive course that tackles a wide variety of web development concepts. Students will develop five apps by the end of this program, so it’s a great resume builder."}
]

# # CREATE AND RELATE PROJECTS
projects_list.each do |project|
  this_project = Project.new(name: project[0], description: project[1])
  project[2].projects << this_project
  this_project.save
end
#
# # CREATE AND RELATE LEXEMES
lexemes_list[0].each do |lexeme|
  this_lexeme = Lexeme.new(name: lexeme)
  oleg.projects[0].lexemes << this_lexeme
  this_lexeme.save
end

lexemes_list[1].each do |lexeme|
  this_lexeme = Lexeme.new(name: lexeme)
  steven.projects[0].lexemes << this_lexeme
  this_lexeme.save
end

# # CREATE AND RELATE TEXTS
this_text = Text.new(title: texts_list[0][:title], content: texts_list[0][:content])
oleg.projects[0].texts << this_text
this_text.save

this_text = Text.new(title: texts_list[1][:title], content: texts_list[1][:content])
steven.projects[0].texts << this_text
this_text.save
