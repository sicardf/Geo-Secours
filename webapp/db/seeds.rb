# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

test = Issue.new
test.name = "Flavien"
test.last_name = "Sicard"
test.phone = Faker::PhoneNumber.cell_phone
test.ip = Faker::Internet.ip_v4_address
test.typeofperson = 1
test.nbr_victims = 1
test.issue_level = 1
test.latitude = 48.814886
test.longitude = 2.269369
test.save


test = Issue.new
test.name = "Nicolas"
test.last_name = "Laporte"
test.phone = Faker::PhoneNumber.cell_phone
test.ip = Faker::Internet.ip_v4_address
test.typeofperson = 0
test.nbr_victims = 7
test.issue_level = 4
test.latitude = 48.811096
test.longitude = 2.282335
test.save

test = Issue.new
test.name = "Robin"
test.last_name = "Maronier"
test.phone = Faker::PhoneNumber.cell_phone
test.ip = Faker::Internet.ip_v4_address
test.typeofperson = 1
test.nbr_victims = 4
test.issue_level = 3
test.latitude = 48.82028
test.longitude = 2.268494
test.save

test = Issue.new
test.name = "Alexandre"
test.last_name = "Hermitant"
test.phone = Faker::PhoneNumber.cell_phone
test.ip = Faker::Internet.ip_v4_address
test.typeofperson = 1
test.nbr_victims = 6
test.issue_level = 4
test.latitude = 48.82028
test.longitude = 2.268494
test.save

test = Issue.new
test.name = "Thomas"
test.last_name = "Fraisse"
test.phone = Faker::PhoneNumber.cell_phone
test.ip = Faker::Internet.ip_v4_address
test.typeofperson = 0
test.nbr_victims = 8
test.issue_level = 4
test.latitude = 48.849411
test.longitude = 2.30361
test.save

test = Issue.new
test.name = "Romaric"
test.last_name = "Fave"
test.phone = Faker::PhoneNumber.cell_phone
test.ip = Faker::Internet.ip_v4_address
test.typeofperson = 1
test.nbr_victims = 2
test.issue_level = 5
test.latitude = 48.884487
test.longitude = 2.346075
test.save

test = Issue.new
test.name = "Edouard"
test.last_name = "Laurent"
test.phone = Faker::PhoneNumber.cell_phone
test.ip = Faker::Internet.ip_v4_address
test.typeofperson = 1
test.nbr_victims = 2
test.issue_level = 5
test.latitude = 48.851713
test.longitude = 2.25076
test.save
