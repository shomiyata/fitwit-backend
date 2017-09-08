# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create( username: 'sho_m', name: "Sho Miyata", password: '123', email: 'sho@sho.com', bio: "I love to pump iron", points: 250, days_a_week: 7,  length_of_program: 1)

WorkoutSession.create(date: Time.now, completed: false, user_id: 1)

#Exercise.create()

