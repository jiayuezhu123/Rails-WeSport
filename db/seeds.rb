# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(email: "1234567@usc.edu",
			password: "123456",
			username: "Richard")

User.create(email: "7654321@usc.edu",
			password: "123456",
			username: "Joe")

User.create(email: "135790@usc.edu",
			password: "123456",
			username: "Eden")

User.create(email: "24687@usc.edu",
			password: "123456",
			username: "Molly")

User.create(email: "1525372@usc.edu",
			password: "123456",
			username: "Eddie")


Pk.create(user_one_id: 3,
	      user_two_id: 5,
	      winner: "Victory",
	      description: "is simply dummy text of the printing and typesetting industry. 
	      Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, 
	  when an unknown printer took a galley of type and scrambled it to make a type specimen book.")

Pk.create(user_one_id: 5,
	      user_two_id: 6,
	      winner: "Victory",
	      description: "is simply dummy text of the printing and typesetting industry. 
	      Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, 
	  when an unknown printer took a galley of type and scrambled it to make a type specimen book.")

Pk.create(user_one_id: 7,
	      user_two_id: 8,
	      winner: "Victory",
	      description: "is simply dummy text of the printing and typesetting industry. 
	      Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, 
	  when an unknown printer took a galley of type and scrambled it to make a type specimen book.")


Pk.create(user_one_id: 3,
	      user_two_id: 8,
	      winner: "Victory",
	      description: "is simply dummy text of the printing and typesetting industry. 
	      Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, 
	  when an unknown printer took a galley of type and scrambled it to make a type specimen book.")


Pk.create(user_one_id: 6,
	      user_two_id: 3,
	      winner: "Victory",
	      description: "is simply dummy text of the printing and typesetting industry. 
	      Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, 
	  when an unknown printer took a galley of type and scrambled it to make a type specimen book.")