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
  name: "master1_#{Faker::Name.unique.name}",
  about_me: Faker::Lorem.sentence
)

master2 = Master.create(
  name: Faker::Name.unique.name,
  about_me: Faker::Lorem.sentence
)

AdminMaster.create(admin: admin1, master: master1)
AdminMaster.create(admin: admin1, master: master2)
AdminMaster.create(admin: admin2, master: master2)

Certificate.create(
  name: Faker::Name.unique.name,
  master: master1,
  photo_link: Faker::Internet.url
)

Certificate.create(
  name: Faker::Name.unique.name,
  master: master2,
  photo_link: Faker::Internet.url
)

Service.create(
  name: Faker::Name.unique.name,
  description: Faker::Lorem.sentence,
  price: Faker::Commerce.price(range: 0..100.0),
  master: master1
)

Service.create(
  name: Faker::Name.unique.name,
  description: Faker::Lorem.sentence,
  price: Faker::Commerce.price(range: 0..100.0),
  master: master1
)

Review.create(
  photo_link: Faker::Internet.url,
  description: Faker::Lorem.sentence,
  master: master1
)

Review.create(
  photo_link: Faker::Internet.url,
  description: Faker::Lorem.sentence,
  master: master1
)

Contact.create(
  link: Faker::Internet.url,
  phone_number: Faker::PhoneNumber.cell_phone,
  note: Faker::Lorem.sentence,
  master: master1
)

Contact.create(
  link: Faker::Internet.url,
  phone_number: Faker::PhoneNumber.cell_phone,
  note: Faker::Lorem.sentence,
  master: master1
)

Article.create(
  title: Faker::Name.unique.name,
  photo_link: Faker::Internet.url,
  description: Faker::Lorem.sentence,
  master: master1
)

Article.create(
  title: Faker::Name.unique.name,
  photo_link: Faker::Internet.url,
  description: Faker::Lorem.sentence,
  master: master1
)

Discount.create(
  name: Faker::Name.unique.name,
  amount: Faker::Number.decimal(l_digits: 2, r_digits: 2),
  master: master1
)

Discount.create(
  name: Faker::Name.unique.name,
  amount: Faker::Number.decimal(l_digits: 2, r_digits: 2),
  master: master1
)
