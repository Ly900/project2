# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Student.destroy_all
Log.destroy_all

andy = Student.create(name: "Andy Anderson", date_of_birth: "1/2/2005", address: "123 Bird Lane, Washington DC, 20010", phone_number: "202-123-4567", email_address: "andy.anderson@yahoo.com")

andy.logs.create(date_of_contact: "5/3/2015", mode_of_contact: "Phonecall", type_of_contact: "Good", contact_details: "Called to tell Andy's mom that he has been behaving very well this week and turned in all his homework.")

andy.logs.create(date_of_contact: "5/4/2015", mode_of_contact: "Email", type_of_contact: "Bad", contact_details: "Lying in class.")

Student.create(name: "Beatrice Bunion", date_of_birth: "2/3/2005", address: "123 Cat Street, Washington, DC 20011", phone_number: "202-234-5678", email_address: "b.bunion@gmail.com")

Student.create(name: "Carol Cluster", date_of_birth: "3/4/2005", address: "123 Dog Circle, Washington, DC 200012", phone_number: "202-345-6789", email_address: "carol.cluster@aol.com")

Student.create(name: "Dunkin Donuts", date_of_birth: "4/4/2005", address: "123 Rabbit Boulevard, Washington, DC 20013", phone_number: "202-456-7890", email_address: "dunkin.d@aol.com")

Student.create(name: "Eric Evil", date_of_birth: "5/5/2005", address: "123 Pidegon Road, Washington, DC 20014", phone_number: "202-567-8901", email_address: "eric.evil@hotmail.com")
