# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
AdminUser.create!(email: 'pravo@gmail.com', password: '12345678', password_confirmation: '12345678') if Rails.env.development?
AdminUser.create!(email: 'pravo@gmail.com', password: '87654321', password_confirmation: '87654321') if Rails.env.production?