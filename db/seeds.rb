# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(email: "dkintop@gmail.com", password_digest: "1234")

Subject.create(title: "test-subject", description: "test-subject-description", category: "would you rather", winning: nil)

Option.create(description: "test-option-description", subject_id:(Subject.first))

Vote.create(option_choice: "option-1", user_id:(User.first), subject_id: (Subject.first))