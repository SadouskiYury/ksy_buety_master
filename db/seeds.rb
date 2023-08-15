# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# Create Admins
# Create Admins

# Create AdminMasters

require "faker"

# Create Admins
admin1 = Admin.create(email: Faker::Internet.unique.email, password: "password")
admin2 = Admin.create(email: Faker::Internet.unique.email, password: "password")

# Create Masters
master1 = Master.create(
  name: Faker::Name.unique.name,
  about_me: Faker::Lorem.sentence
)

master2 = Master.create(
  name: Faker::Name.unique.name,
  about_me: Faker::Lorem.sentence
)

AdminMaster.create(admin: admin1, master: master1)
AdminMaster.create(admin: admin1, master: master2)
AdminMaster.create(admin: admin2, master: master2)
