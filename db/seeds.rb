# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Employee.create(name: 'Adam', email: 'adam@brightredmedia.com')
Employee.create(name: 'Jonathan', email: 'jonathan@brightredmedia.com')

Project.create(name: 'Test project 1')
Project.create(name: 'Test project 2')
