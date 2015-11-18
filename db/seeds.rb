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
])

teacher1 = User.find_by(email:"teacher1@email.com")
teacher1.students.create([
  {first_name: "Andy", last_name: "Anderson", date_of_birth: "1/2/2005", address: "123 Bird Lane, Washington DC, 20010", phone_number: "202-123-4567", email_address: "andy.anderson@yahoo.com"},
  {first_name: "Beatrice", last_name: "Bunion", date_of_birth: "2/3/2005", address: "123 Cat Street, Washington, DC 20011", phone_number: "202-234-5678", email_address: "b.bunion@gmail.com"},
  {first_name: "Carol", last_name: "Cluster", date_of_birth: "3/4/2005", address: "123 Dog Circle, Washington, DC 200012", phone_number: "202-345-6789", email_address: "carol.cluster@aol.com"}
])

Student.find_by(first_name:"Andy").logs.create([
  {date_of_contact: "01/09/2015", mode_of_contact: "Phonecall", type_of_contact: "Positive", contact_details: "Called to tell Andy's mom that he has been behaving very well this week and turned in all his homework."},
  {date_of_contact: "15/09/2015", mode_of_contact: "Email", type_of_contact: "Negative", contact_details: "Andy missed a few assignments this week. Seems to be getting more playful and distracted in class."}
])

Student.find_by(first_name:"Beatrice").logs.create([
  {date_of_contact: "03/09/2015", mode_of_contact: "Phonecall", type_of_contact: "Positive", contact_details: "Beatrice is a friendly girl who has been very helpful with classroom chores."},
  {date_of_contact: "20/09/2015", mode_of_contact: "In person", type_of_contact: "Negative", contact_details: "Beatrice has been teasing and calling Carol names."},
])

teacher2 = User.find_by(email:"teacher2@email.com")
teacher2.students.create([
  {first_name: "Dunkin", last_name: "Donuts", date_of_birth: "4/4/2005", address: "123 Rabbit Boulevard, Washington, DC 20013", phone_number: "202-456-7890", email_address: "dunkin.d@aol.com"},
  {first_name: "Eric", last_name: "Evil", date_of_birth: "5/5/2005", address: "123 Pidegon Road, Washington, DC 20014", phone_number: "202-567-8901", email_address: "eric.evil@hotmail.com"}
])

Student.find_by(first_name:"Dunkin").logs.create([
  {date_of_contact: "05/09/2015", mode_of_contact: "In person", type_of_contact: "Positive", contact_details: "Dunkin asked if the class could have a class pet and wrote a wonderful persuasive essay on why it should be a hamster."},
  {date_of_contact: "26/09/2015", mode_of_contact: "Email", type_of_contact: "Neutral", contact_details: "Dunkin has not been eating the school lunch. Called mom and she said he gets full off of donuts in the morning."}
])

Student.find_by(first_name:"Eric").logs.create([
  {date_of_contact: "10/09/2015", mode_of_contact: "Email", type_of_contact: "Positive", contact_details: "Eric got 100% on his quiz on Native Americans. Mom asked if he could bring more books home about Native Americans. Mom says they do not have many books at home."},
  {date_of_contact: "30/10/2015", mode_of_contact: "In person", type_of_contact: "Negative", contact_details: "While we had a substitute teacher, Eric let the hamster out and the hamster is now missing."}
])
