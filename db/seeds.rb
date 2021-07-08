# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Todo.create!(title: 'Manager Meeting', description: 'Regarding team status update')
Todo.create!(title: 'Project Planning' , description: 'Discussion with team members regarding new project')
Todo.create!(title: 'Team Performance', description: 'Evaluating the team performance')
Todo.create!(title: 'Training Session', description: 'Conduct training sessions for marketing people')
Todo.create!(title: 'Application Demo', description: 'Application Demo for the interns')
