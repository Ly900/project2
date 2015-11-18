# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# User.destroy_all
User.destroy_all
Student.destroy_all
Log.destroy_all 

User.create!([
  {email: "teacher1@email.com", password: "password", password_confirmation: "password"},
  {email: "teacher2@email.com", password: "password", password_confirmation: "password"},
  {email: "teacher3@email.com", password: "password", password_confirmation: "password"},
])

teacher1 = User.find_by(email:"teacher1@email.com")
teacher1.students.create([
  {first_name: "Andy", last_name: "Anderson", date_of_birth: "1/2/2005", address: "123 Bird Lane, Washington DC, 20010", phone_number: "202-123-4567", email_address: "andy.anderson@yahoo.com"},
  {first_name: "Beatrice", last_name: "Bunion", date_of_birth: "2/3/2005", address: "123 Cat Street, Washington, DC 20011", phone_number: "202-234-5678", email_address: "b.bunion@gmail.com"},
  {first_name: "Carol", last_name: "Cluster", date_of_birth: "3/4/2005", address: "123 Dog Circle, Washington, DC 200012", phone_number: "202-345-6789", email_address: "carol.cluster@aol.com"}
])

teacher2 = User.find_by(email:"teacher2@email.com")
teacher2.students.create([
  {first_name: "Dunkin", last_name: "Donuts", date_of_birth: "4/4/2005", address: "123 Rabbit Boulevard, Washington, DC 20013", phone_number: "202-456-7890", email_address: "dunkin.d@aol.com"},
  {first_name: "Eric", last_name: "Evil", date_of_birth: "5/5/2005", address: "123 Pidegon Road, Washington, DC 20014", phone_number: "202-567-8901", email_address: "eric.evil@hotmail.com"}
])

#
# andy.logs.create(date_of_contact: "5/3/2015", mode_of_contact: "Phonecall", type_of_contact: "Positive", contact_details: "Called to tell Andy's mom that he has been behaving very well this week and turned in all his homework.")
#
# andy.logs.create(date_of_contact: "5/4/2015", mode_of_contact: "Email", type_of_contact: "Negative", contact_details: "Lying in class.")
