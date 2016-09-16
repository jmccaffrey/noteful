# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


#should guard if it already exists
#create user
default_user = User.create(email:"admin@admin.com", password:"admin123", password_confirmation:"admin123")

#give that user some notes
5.times do |index|
  Note.create(title:"Note #{index}", content:"This is note # #{index} about some generic topic", user: default_user) 
end