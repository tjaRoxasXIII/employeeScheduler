require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

5.times do
    User.create(email: Faker::Internet.email, first_name: Faker::FunnyName.name.split(" ")[0], last_name: Faker::FunnyName.name.split(" ")[1], encrypted_password: "password", job_title: "Optical Admin")
end